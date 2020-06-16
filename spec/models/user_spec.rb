require 'rails_helper'

RSpec.describe User, type: :model do
  
  context "User's display name" do
    it 'should return name as display name' do
      user = create(:user1)
      expect(user.display_name).to eq(user.name)
    end

    it 'should return email as display name' do
      user = create(:user2)
      expect(user.display_name).to eq(user.email)
    end
  end

end
