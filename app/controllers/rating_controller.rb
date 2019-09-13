class RatingController < ApplicationController

  def index
      @ratings = Rating.all
  end

  def show
    
  end

  def new
  end 

  def create
      Rating.create({
        guest_id: params[:guest_id],
        episode_id: params[:episode_id],
        rating_number: params[:rating_number]
      })
      # byebug

      redirect_to "/ratings"

  end
end
