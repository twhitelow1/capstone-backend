class Assignment < ApplicationRecord 
  belongs_to :user  
  belongs_to :chore

  validates :assigner_id, numericality: { greater_than: 0 }

  scope :show_completed, ->(completed_status) { where(completed: true) if completed_status == "true"}

  def assigner
    return User.find_by(id: id)
  end

  def users
    return User.where(home_id: chore.room.home_id)
  end

  def js_date
    return Assignment.find_by(id: id).due_date.to_f * 1000
  end

end
