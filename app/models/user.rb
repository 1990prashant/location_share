class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :locations
  has_many :shared_locations
  has_many :shared_with_me, class_name: 'SharedLocation', foreign_key: :shared_with

  def display_name
    name || email
  end
end
