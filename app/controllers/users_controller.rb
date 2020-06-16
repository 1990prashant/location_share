class UsersController < ApplicationController

  before_action :find_user, only: [:profile]
  before_action :is_admin, only: [:profile, :shared]
  before_action :list_of_users, only: [:index, :profile]

  def index
  end

  def profile
    @public_shared_locations = get_shared_location
  end

  def shared
    @data = get_data
  end

  private

    def get_data
      if params[:owned_by].downcase == 'me'
        current_user.shared_locations
      else
        current_user.shared_with_me
      end
    end

    def find_user
      if params[:user_id].blank?
        @user = current_user
      else
        @user = User.find_by_username(params[:user_id])
      end
    end

    def get_shared_location
      if @admin
        current_user.locations.last
      else
        @user.shared_locations.where(shared_with: nil).collect(&:location)
      end
    end

    def list_of_users
      @users = User.where.not(id: current_user.id)
    end

    def is_admin
      @admin = current_user == @user
    end

end