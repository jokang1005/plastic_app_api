class NumbersController < ApplicationController
  before_action :set_number, only: [:show, :update, :destroy]

  # GET /numbers
  def index
    @numbers = Number.all

    render json: @numbers
  end

  # GET /numbers/1
  def show
    render json: @number
  end

  # POST /numbers
  def create
    @number = Number.new(number_params)

    if @number.save
      render json: @number, status: :created, location: @number
    else
      render json: @number.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /numbers/1
  def update
    if @number.update(number_params)
      render json: @number
    else
      render json: @number.errors, status: :unprocessable_entity
    end
  end

  # DELETE /numbers/1
  def destroy
    @number.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_number
      @number = Number.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def number_params
      params.require(:number).permit(:plastic-bags, :coffee-cup, :plastic-straw, :6-pack-plastic-rings, :plastic-water-bottle, :coffee-pod, :plastic-cup, :disposable-diaper, :plastic-toothbrush)
    end
end
