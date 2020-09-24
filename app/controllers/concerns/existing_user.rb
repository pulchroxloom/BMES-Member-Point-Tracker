# app/controllers/concerns/existing_user.rb

# This concern guarantees the user is already in the system.
# Otherwise, it will redirect them to the signup page

module ExistingUser
  extend ActiveSupport::Concern

  included do
    before_action :existing_user?
  end

  def existing_user?
  	@supplied_email = session[:app_user]["email"]
  	@member  = Member.find_by_email(@supplied_email)

  	unless @member
  		redirect_to signup_path, alert: 'You still need to sign up!'
  	end
  end
end