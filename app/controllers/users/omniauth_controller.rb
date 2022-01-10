module Users
  class OmniauthController < ApplicationController
    # github callback

    def github
      @user = User.create_from_provider_data(request.env['omniauth.auth'])
      if @user.persisted?
        flash[:notice] = I18n.t 'devise.omniauth_callbacks.success', kind: 'GitHub'
        sign_in_and_redirect @user
      else
        flash[:notice] = I18n.t 'devise.omniauth_callbacks.failure'
        redirect_to new_user_registration_url
      end
    end
    # google callback

    def google_oauth2
      @user = User.create_from_provider_data(request.env['omniauth.auth'])
      if @user.persisted?
        flash[:notice] = I18n.t 'devise.omniauth_callbacks.success', kind: 'Google'
        sign_in_and_redirect @user
      else
        flash[:notice] = I18n.t 'devise.omniauth_callbacks.failure'
        redirect_to new_user_registration_url
      end
    end
    # linkedin callback

    def linkedin
      @user = User.create_from_provider_data(request.env['omniauth.auth'])
      if @user.persisted?
        flash[:notice] = I18n.t 'devise.omniauth_callbacks.success', kind: 'Linkedin'
        sign_in_and_redirect @user
      else
        flash[:notice] = I18n.t 'devise.omniauth_callbacks.failure'
        redirect_to new_user_registration_url
      end
    end
  end
end
