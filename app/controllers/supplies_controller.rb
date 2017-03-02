  class SuppliesController < ApplicationController
  before_action :set_supply, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new,:show, :edit, :update, :destroy]


  # GET /supplies
  # GET /supplies.json
  def index
    @supplies = Supply.all
  end

  # GET /supplies/1
  # GET /supplies/1.json
  def show
  end

  # GET /supplies/new
  def new
    @supply = Supply.new
  end

  # GET /supplies/1/edit
  def edit
  end

def query
  @supplies = Supply.all
end
  # POST /supplies
  # POST /supplies.json
  def create
    @supply = Supply.new(supply_params)
     @supply.user_id = current_user.id

    respond_to do |format|
      if @supply.save
        format.html { redirect_to @supply, notice: 'Supply was successfully created.' }
        format.json { render :show, status: :created, location: @supply }
      else
        format.html { render :new }
        format.json { render json: @supply.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /supplies/1
  # PATCH/PUT /supplies/1.json
  def update
    respond_to do |format|
      if @supply.update(supply_params)
        format.html { redirect_to @supply, notice: 'Supply was successfully updated.' }
        format.json { render :show, status: :ok, location: @supply }
      else
        format.html { render :edit }
        format.json { render json: @supply.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /supplies/1
  # DELETE /supplies/1.json
  def destroy
    @supply.destroy
    respond_to do |format|
      form at.html { redirect_to supplies_url, notice: 'Supply was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_supply
      @supply = Supply.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def supply_params
      params.require(:supply).permit(:date, :gasStation,:car_id, :km, :liter, :fuel, :price)
    end
end
