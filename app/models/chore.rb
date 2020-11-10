class Chore < ApplicationRecord
  belongs_to :room
  has_many :users, through: :assignments

  # All assignments that specific chore has ever been assigned
  def assignments
    return Assignment.where(chore_id: id)
  end

  # Returns true if chore is currently assigned / false is not
  def assigned
    result = Assignment.where(chore_id: id).map{ |assignment| !assignment.completed}
    return result.length > 0 
  end

  # Returns Last time chore was completed
  def last_completed
    result = assignments.order(completed_date: :desc)
    if !result.first.completed_date
      return result.first.completed_date
    else 
      return result.first.completed_date.to_f * 1000
    end
  end

  # Returns all users who are attached to home
  def household
    return User.where(home_id: room.home_id)
  end
end
