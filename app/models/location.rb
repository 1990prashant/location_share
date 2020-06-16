class Location < ApplicationRecord
  belongs_to :user
  has_many :shared_locations

  def share_me(shared_by, shared_with)
    if shared_with.nil?
      self.shared_locations.create(user_id: shared_by.id)
    else
      shared_with.each do |shared_with_id|
        sl = self.shared_locations.new(user_id: shared_by.id, shared_with: shared_with_id)
        sl.save
      end
    end
  end

end
