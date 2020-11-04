class Assignment < ApplicationRecord 
  belongs_to :user  
  belongs_to :chore

  

  scope :show_completed, ->(completed_status) { where(completed: true) if completed_status == "true"}

end
