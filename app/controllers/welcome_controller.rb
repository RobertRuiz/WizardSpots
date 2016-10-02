class WelcomeController < ApplicationController
  def index
    return redirect_to spots_path if current_user
  end
end
