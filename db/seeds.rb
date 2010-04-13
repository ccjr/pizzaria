admin = User.create(:email => "admin@example.com", :password => "secret", :password_confirmation => "secret")
admin.update_attribute(:admin, true)

products = Product.create([
  {:name => "New York Pizza", :description => "Salami, tomato souce and mozzarella cheese", :category => "Pizza", :price => 12},
  {:name => "Margherita Pizza", :description => "Tomato, sliced mozzarella, basil and extra-virgin olive oil", :category => "Pizza", :price => 10},
  {:name => "French Fries", :description => "Golden fried potatos", :category => "Other", :price => 5},
  {:name => "Coca-cola Zero ", :description => "Coca-cola with zero calories", :category => "Drink", :price => 2}
])