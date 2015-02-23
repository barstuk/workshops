class ApplicationController < ActionController::Base

  decent_configuration do
    strategy DecentExposure::StrongParametersStrategy
  end



  def authorize_admin!
    logger.error "Attempt to access admin path by user with id:#{current_user.id}"
    redirect_to root_path, :flash => { :error => "You are not allowed to see this page." }  unless current_user && current_user.admin?
  end

  def redirect_if_not_product_owner
    unless product.user == current_user
      logger.error "Attempt to access not own product edit path by user with id:#{current_user.id}"
      redirect_to category_product_url(params[:category_id], params[:id]), :flash => { :error => "You are not allowed to edit this product." }
    end
  end

  protect_from_forgery with: :exception
end
