class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource)
    case resource
    when User
      top_index_path
    when Admin
      admins_top_path
    end
  end
end
