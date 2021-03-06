# frozen_string_literal: true

class Auth0Controller < ApplicationController
  def callback
    # This stores all of the info that comes from Auth0
    session[:userinfo] = request.env['omniauth.auth']

    @session_info = session[:userinfo]

    @user_info = @session_info['info']

    @uid = @session_info['uid']
    @name = @user_info['name']
    @email = @user_info['email']

    session[:app_user] = { 'name' => @name, 'email' => @email, 'uid' => @uid, 'kicked_out' => false }

    redirect_to '/dashboard'
  end

  def failure
    # show a failure page or redirect to an error page
    @error_msg = request.params['message']
  end
end
