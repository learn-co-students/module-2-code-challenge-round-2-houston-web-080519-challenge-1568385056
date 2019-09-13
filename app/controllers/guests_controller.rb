class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def show
    @guest = Guest.find_by_id(params[:id])
  end

  def new
  end 

  def create

  end
end
