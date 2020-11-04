class Assignment < ApplicationRecord 
  belongs_to :user  
  belongs_to :chore

  validates :due_date, presence: true
  validates :assigner_id, numericality: { greater_than: 0 }
  validates :user_id, numericality: { greater_than: 0 }

  scope :show_completed, ->(completed_status) { where(completed: true) if completed_status == "true"}

  def assigner
    return User.find_by(id: id)
  end

end
