class Chore < ApplicationRecord
  belongs_to :room
  has_many :users, through: :assignments

  def assigned
    result = Assignment.where(chore_id: id).map{ |assignment| !assignment.completed}
    return result.length > 0 
  end

  def household
    return User.where(home_id: room.home_id)
  end
end
