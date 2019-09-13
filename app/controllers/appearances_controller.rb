class AppearancesController < ApplicationController

    def index
      @appearances = Appearance.all
    end

    def new
    end

    def create
        Appearance.create({
            episode_id: params[:episode_id],
            guest_id: params[:guest_id],
            rating: params[:rating]
        })
        redirect_to "/episodes/#{params[:episode_id]}"
    end
  end