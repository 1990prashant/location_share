class LocationsController < ApplicationController

  before_action :find_location, only: [:share]

  def share
    @location.share_me(current_user, params[:shared_with_ids])
    render json: {
      success: true
    }
  end

  private

    def find_location
      @location = Location.find_by_id(params[:id])
    end

end