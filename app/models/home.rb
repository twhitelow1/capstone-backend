class Home < ApplicationRecord
  has_many :rooms
  has_many :users

  def members
    User.all.where(home_id: id)
  end
end
