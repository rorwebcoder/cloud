class CarriersController < ApplicationController

  def index
    @carriers = Carrier.all
  end

  def show
    @carrier = Carrier.find_by_id(params[:id])
  end

  def new
    @carrier = Carrier.new
  end

  def create
    @carrier = Carrier.new
    @carrier.carrier_name = params[:carrier_name]
    @carrier.carrier_description = params[:carrier_description]
    
    if @carrier.save
      redirect_to carriers_url
    else
      render 'new'
    end
  end

  def edit
    @carrier = Carrier.find_by_id(params[:id])
  end

  def update
    @carrier = Carrier.find_by_id(params[:id])
    @carrier.carrier_name = params[:carrier_name]
    @carrier.carrier_description = params[:carrier_description]
    
    if @carrier.save
      redirect_to carriers_url
    else
      render 'new'
    end
  end

  def destroy
    @carrier = Carrier.find_by_id(params[:id])
    @carrier.destroy
    redirect_to carriers_url
  end
end
