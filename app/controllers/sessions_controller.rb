class SessionsController < Devise::SessionsController
  def new
    render 'devise/sessions/new'
  end
  
  def destroy
    reset_session
    super
  end
end
