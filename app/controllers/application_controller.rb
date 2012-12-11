class ApplicationController < ActionController::Base
  protect_from_forgery
  #include TwitterHelper
  require 'twitter'
    rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, :alert => exception.message
  end
  
  before_filter :set_locale
  def set_locale
    I18n.locale = params[:lang] if params[:lang].present?
  end
end
