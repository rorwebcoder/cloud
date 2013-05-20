class LoadsController < ApplicationController

  def index
    @loads = Load.all
  end

  def show
    @load = Load.find_by_id(params[:id])
  end

  def new
    @load = Load.new
  end

  def create
    @load = Load.new
    @load.bill_of_lading = params[:bill_of_lading]
    @load.carrier_id = params[:carrier_id]
    @load.vendor_id = params[:vendor_id]
    @load.shipper_id = params[:shipper_id]
    @load.equipment_type = params[:equipment_type]
    @load.inco_terms = params[:inco_terms]
    @load.freight_terms = params[:freight_terms]
    @load.mode = params[:mode]

    if @load.save
      @load = Load.find_by_id(params[:id])
      redirect_to '/loads/:id/stops/new'
    else
      render 'new'
    end
  end

  def edit
    @load = Load.find_by_id(params[:id])
  end

  def update
    @load = Load.find_by_id(params[:id])
    @load.bill_of_lading = params[:bill_of_lading]
    @load.carrier_id = params[:carrier_id]
    @load.vendor_id = params[:vendor_id]
    @load.shipper_id = params[:shipper_id]
    @load.equipment_type = params[:equipment_type]
    @load.inco_terms = params[:inco_terms]
    @load.freight_terms = params[:freight_terms]
    @load.mode = params[:mode]

    if @load.save
      redirect_to loads_url
    else
      render 'new'
    end
  end

  def destroy
    @load = Load.find_by_id(params[:id])
    @load.destroy
    redirect_to loads_url
  end
end
