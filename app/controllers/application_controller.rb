class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  include Pundit
  protect_from_forgery with: :exception
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  around_action :switch_locale

  private

  def user_not_authorized
    flash[:notice] = 'Sorry, You Are Not Authorized To Do This'
    redirect_to(request.referer || root_path)
  end

  def switch_locale(&action)
    locale = locale_from_url || I18n.default_locale
    I18n.with_locale locale, &action
  end

  def locale_from_url
    locale = params[:locale]

    return locale if I18n.available_locales.map(&:to_s).include?(locale)
  end

  def default_url_options
    { locale: I18n.locale }
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit :sign_up, keys: %i[username email password password_confirmation remember_me]
    devise_parameter_sanitizer.permit :sign_in, keys: %i[login password]
    devise_parameter_sanitizer.permit :account_update,
                                      keys: %i[avatar username email password password_confirmation remember_me]
  end
end
