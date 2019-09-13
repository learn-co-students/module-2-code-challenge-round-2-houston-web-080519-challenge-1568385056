class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def show
    @episode = Episode.find(params[:id])
    @array_of_appearances = []
    @array_of_lines = []
    Appearance.all.each do |appearance|
      if appearance.episode_id == @episode.id
        @array_of_appearances << appearance
      end
    end

    
    @array_of_appearances.each do |appearance|
      @episode.guests.each do |guest|
        if guest.id == appearance.guest_id
          @array_of_lines << "#{guest.name} | Rating: #{appearance.rating}"
        end
      end
    end
  end

end
