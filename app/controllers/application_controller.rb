class ApplicationController < ActionController::Base
  def signed_in_only!
    redirect_to root_path unless current_user
  end
end
