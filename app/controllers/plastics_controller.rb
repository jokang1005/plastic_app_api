class PlasticsController < ApplicationController
  # before_action :authorized
  before_action :set_plastic, only: [:show, :update, :destroy] 

  # GET /plastics
  def index
    @plastics = Plastic.where(user_id: @user.id)

    render json: @plastics
  end

  # GET /plastics/1
  def show
    render json: @plastic
  end

  # POST /plastics
  def create
    @plastic = Plastic.new(plastic_params)
    @plastic.user_id = @user.id

    if @plastic.save
      render json: @plastic, status: :created, location: @plastic
    else
      render json: @plastic.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /plastics/1
  def update
    if @plastic.update(plastic_params)
      render json: @plastic
    else
      render json: @plastic.errors, status: :unprocessable_entity
    end
  end

  # DELETE /plastics/1
  def destroy
    @plastic.destroy
    @plastic.user_id = @user.id

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plastic
      @plastic = Plastic.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def plastic_params
      params.require(:plastic).permit(:plastic_bags, :coffee_cup, :plastic_straw, :six_pack_plastic_rings, :plastic_water_bottle, :coffee_pod, :plastic_cup, :disposable_diaper, :plastic_toothbrush, :user_id)
    end
end
