class StopsController < ApplicationController

  def index
    @stops = Stop.all
  end

  def show
    @stop = Stop.find_by_id(params[:id])
  end

  def new
    load = Load.find(params[:load_id])
    @stop = load.stops.build
  end

  def create
    load = Load.find(params[:load_id])
    @stop = load.stops.create(params[:stop])

    #@stop.load_id = Load.find(params[:load_id])
    #@stop = Stop.new
    #@stop.load_id = params[:load_id]
    @stop.stop_type = params[:stop_type]
    @stop.stop_sequence = params[:stop_sequence]
    @stop.stop_name = params[:stop_name]
    @stop.stop_address = params[:stop_address]
    @stop.stop_city = params[:stop_city]
    @stop.stop_state = params[:stop_state]
    @stop.stop_country = params[:stop_country]
    @stop.stop_postal = params[:stop_postal]

    if @stop.save
      redirect_to stops_url
    else
      render 'new'
    end
  end

  def edit
    @stop = Stop.find_by_id(params[:id])
  end

  def update
    @stop = Stop.find_by_id(params[:id])
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
      redirect_to stops_url
    else
      render 'new'
    end
  end

  def destroy
    @stop = Stop.find_by_id(params[:id])
    @stop.destroy
    redirect_to stops_url
  end
end
