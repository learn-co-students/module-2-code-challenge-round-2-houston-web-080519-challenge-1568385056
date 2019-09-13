class AppearancesController < ApplicationController
    def index
        @appearances = Appearance.all
    end

    def new
        @episodes = Episode.all
        @guests = Guest.all
        @numbers = [1,2,3,4,5]
    end

    def create
        Appearance.create({
            guest_id: params[:guest_id],
            rating: params[:rating],
            episode_id: params[:episode_id]
        })
        redirect_to "/episodes/#{params[:episode_id]}"
    end

end