class Order < ActiveRecord::Base
  DELIVERY_METHODS = ["Pick up", "Home Delivery"]
  validates :user_id, :presence => true

  cattr_accessor :gateway

  belongs_to :user
  has_many :items, :class_name => "OrderItem"
    
  def total
    items.collect(&:total).sum
  end
  
  def process_payment(credit_card={})
    credit_card = ActiveMerchant::Billing::CreditCard.new(credit_card)
    # Convert the total amount to cents
    amount = (total * 100).to_i
    if credit_card.valid?
      response = gateway.purchase(amount, credit_card)
      if response.success?
        self.update_attributes(
          :payment_authorization => response.authorization,
          :payment_message => "Successfully charged $#{sprintf("%.2f", total)} to the credit card #{credit_card.display_number}")
        return true
      else
        self.update_attribute(:payment_message, response.message)
        return false
      end
    else
      self.update_attribute(:payment_message, "Invalid Credit Card")
      return false
    end
  end
end
