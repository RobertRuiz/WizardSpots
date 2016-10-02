class WelcomeController < ApplicationController
  def index
    if current_user
      redirect_to spots_path
    end
  end
end
