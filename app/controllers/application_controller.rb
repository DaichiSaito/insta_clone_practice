class ApplicationController < ActionController::Base
  add_flash_types :success, :info, :warning, :danger

  def not_authenticated
    redirect_to login_path, warning: 'ログインしてください'
  end
end
