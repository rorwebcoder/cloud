class VendorsController < ApplicationController

  def index
    @vendors = Vendor.all
  end

  def show
    @vendor = Vendor.find_by_id(params[:id])
  end

  def new
    @vendor = Vendor.new
  end

  def create
    @vendor = Vendor.new
    @vendor.vendor_name = params[:vendor_name]
    @vendor.vendor_description = params[:vendor_description]
    
    if @vendor.save
      redirect_to vendors_url
    else
      render 'new'
    end
  end

  def edit
    @vendor = Vendor.find_by_id(params[:id])
  end

  def update
    @vendor = Vendor.find_by_id(params[:id])
    @vendor.vendor_name = params[:vendor_name]
    @vendor.vendor_description = params[:vendor_description]
    
    if @vendor.save
      redirect_to vendors_url
    else
      render 'new'
    end
  end

  def destroy
    @vendor = Vendor.find_by_id(params[:id])
    @vendor.destroy
    redirect_to vendors_url
  end
end
