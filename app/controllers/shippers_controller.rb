class ShippersController < ApplicationController

  def index
    @shippers = Shipper.all
  end

  def show
    @shipper = Shipper.find_by_id(params[:id])
  end

  def new
    @shipper = Shipper.new
  end

  def create
    @shipper = Shipper.new
    @shipper.shipper_name = params[:shipper_name]
    @shipper.shipper_description = params[:shipper_description]
    
    if @shipper.save
      redirect_to shippers_url
    else
      render 'new'
    end
  end

  def edit
    @shipper = Shipper.find_by_id(params[:id])
  end

  def update
    @shipper = Shipper.find_by_id(params[:id])
    @shipper.shipper_name = params[:shipper_name]
    @shipper.shipper_description = params[:shipper_description]
    
    if @shipper.save
      redirect_to shippers_url
    else
      render 'new'
    end
  end

  def destroy
    @shipper = Shipper.find_by_id(params[:id])
    @shipper.destroy
    redirect_to shippers_url
  end
end
