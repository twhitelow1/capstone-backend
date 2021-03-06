class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :first_name, presence: true

  belongs_to :home, optional: true
  has_many :chores, through: :assignments

  def housemates
    home.users.select{ |user| user.id != id}
  end

end
