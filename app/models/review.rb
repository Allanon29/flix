class Review < ActiveRecord::Base
  belongs_to :movie

  validates :name, presence: true
  validates :comment, :city, length: {minimum: 4}
  validates :state, length: {maximum: 3}

  STARS = [1,2,3,4,5]
  validates :stars, inclusion: {in: STARS, message: "must be between 1 and 5"}

end
