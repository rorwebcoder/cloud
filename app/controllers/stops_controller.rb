class StopsController < ApplicationController

  def index
    load = Load.find(params[:load_id])
    @stops = load.stops
  end

  def show
    load = Load.find(params[:load_id])
    @stop = load.stops.find(params[:id])
  end

  def new
    load = Load.find(params[:load_id])
    @the_load = Load.find(params[:load_id])
    @stop = load.stops.new
  end

  def create
    load = Load.find(params[:load_id])
    @the_load = Load.find(params[:load_id])
    @stop = load.stops.new
    @stop.load_id = params[:load_id]
    @stop.stop_type = params[:stop_type]
    @stop.stop_sequence = params[:stop_sequence]
    @stop.stop_name = params[:stop_name]
    @stop.stop_address = params[:stop_address]
    @stop.stop_city = params[:stop_city]
    @stop.stop_state = params[:stop_state]
    @stop.stop_country = params[:stop_country]
    @stop.stop_postal = params[:stop_postal]

  if @stop.save
    if params[:commit] == "Save and Add Stop"
      redirect_to new_load_stop_url(@the_load.id)
    else
      redirect_to load_stops_url(@the_load.id)
    end
  else
    render 'new'
  end
 end



  def edit
    load = Load.find(params[:load_id])
    @stop = load.stops.find_by_id(params[:id])
  end

  def update
    load = Load.find(params[:load_id])
    @stop = load.stops.find_by_id(params[:id])
    @stop.load_id = params[:load_id]
    @stop.stop_type = params[:stop_type]
    @stop.stop_sequence = params[:stop_sequence]
    @stop.stop_name = params[:stop_name]
    @stop.stop_address = params[:stop_address]
    @stop.stop_city = params[:stop_city]
    @stop.stop_state = params[:stop_state]
    @stop.stop_country = params[:stop_country]
    @stop.stop_postal = params[:stop_postal]

    if @stop.save
      redirect_to load_stops_url(load.id)
    else
      #redirect_to edit_load_stops_url(load.id)
    end
  end

  def destroy
    load = Load.find(params[:load_id])
    @stop = load.stops.find(params[:id])
    @stop.destroy
    redirect_to load_stops_url
  end
end
