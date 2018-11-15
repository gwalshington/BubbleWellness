class WelcomeController < ApplicationController

  def index
    if current_user
      if current_user.admin === true
        redirect_to admin_dash_path
      elsif current_user.therapist === true
        redirect_to therapist_portal_path
      else
        redirect_to user_dash_path
      end
    end
  end


end
