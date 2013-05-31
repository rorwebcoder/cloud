class MessagesController < ApplicationController
  def index
    load = Load.find(params[:load_id])
    @messages = load.messages.scoped
    @message = load.messages.new
  end

  def show
    load = Load.find(params[:load_id])
    @message = load.messages.find(params[:id])
  end

  def new
    load = Load.find(params[:load_id])
    @message = load.messages.new(:parent_id => params[:parent_id])
  end

  def create
    load = Load.find(params[:load_id])
    @message = load.messages.new(params[:message])
    if @message.save
      redirect_to load_messages_url(load.id)
    else
      render :new
    end
  end

  def destroy
    load = Load.find(params[:load_id])
    @message = load.messages.find(params[:id])
    @message.destroy
    redirect_to load_messages_url(load.id)
  end
end
