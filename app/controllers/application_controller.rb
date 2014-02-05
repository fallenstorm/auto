class ApplicationController < ActionController::Base
  before_filter :authenticate_user!
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  rescue_from CanCan::AccessDenied do |exception|
    #redirect_to main_app.root_path, :alert => exception.message
    render :file => "#{Rails.root}/public/403.html", :status => 403, :layout => false
  end
  rescue_from ActiveRecord::StatementInvalid do |exception|
    redirect_to request.original_url, :alert => exception.message
    #render :file => "#{Rails.root}/public/500.html", :status => 500, :layout => false
  end
end
