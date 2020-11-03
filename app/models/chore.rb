class Chore < ApplicationRecord
  belongs_to :room
  has_many :users, through: :assignments
end
