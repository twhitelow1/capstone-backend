class Chore < ApplicationRecord
  belongs_to :room
  has_many :users, through: :assignments

  def users
    return User.where(home_id: room.home_id)
  end
end
