class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def show
    @episodes = Episode.all
    @guest = Guest.find(params[:id])
  end

  def new
    @episodes = Episode.all
  end

  def create
    Guest.create({
      name: params[:name],
      occupation: params[:occupation],
      episode_id: params[:idd]
    })
    redirect_to "/guests"
  end

  def edit
    @guest = Guest.find(params[:id])
  end



  def update
    @guest = Guest.find(params[:id])
    @guest.update({
       name: params[:name],
       occupation: params[:occupation],
       episode_id: 2

   })
   redirect_to "/guests"
  end

end
