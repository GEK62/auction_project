class UserDecorator < Draper::Decorator
  delegate_all

  def username_or_email
    return object.username if object.username.present?

    object.email.split('@').first
  end
end
