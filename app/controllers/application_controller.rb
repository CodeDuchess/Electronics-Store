class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :categories
  before_action :brands

  helper_method :current_order

   def current_order
     if !session[:order_id].nil?
       Order.find(session[:order_id])
     else
       Order.new
     end
   end

  def categories
  	@categories = Category.order(:name)
  end
end


def brands
  @brands = Product.pluck(:brand).uniq
end

def configure_permitted_parameters
  before_action :configure_permitted_parameters, if: :devise_controller?
   devise_parameter_sanitizer.permit(:sign_up, keys: [:role])
   devise_parameter_sanitizer.permit(:account_update, keys: [:role])
end
