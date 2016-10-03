class SpotsController < ApplicationController
  before_filter :authenticate!
  before_action :set_spot, only: [:show, :edit, :update, :destroy]

  # GET /spots
  def index
    @spots = current_user.spots.all
  end

  # GET /spots/1
  def show
  end

  # GET /spots/new
  def new
    @spot = current_user.spots.new
  end

  # GET /spots/1/edit
  def edit
  end

  # POST /spots
  def create
    @spot = current_user.spots.new(spot_params)

    if @spot.save
      redirect_to spots_path, notice: 'Spot was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /spots/1
  def update
    if @spot.update(spot_params)
      redirect_to spots_path, notice: 'Spot was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /spots/1
  def destroy
    @spot.destroy
    redirect_to spots_path, notice: 'Spot was successfully deleted from your account.'
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_spot
    @spot = current_user.spots.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def spot_params
    params.require(:spot).permit(:name, :title, :description, :category_id)
  end
end
