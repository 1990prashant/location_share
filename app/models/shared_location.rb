class SharedLocation < ApplicationRecord
  belongs_to :location
  belongs_to :user
  belongs_to :shared_user, class_name: 'User', foreign_key: :shared_with

  def shared_with_user
    return 'Public' if shared_with.nil?
    shared_user.display_name
  end

end
