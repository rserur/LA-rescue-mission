class Question < ActiveRecord::Base
  has_many :answers
  has_one :best_answer
  belongs_to :user

  validates :title,
    presence: true,
    length: { minimum: 40 }
  validates :description,
    presence: true,
    length: { minimum: 150 }
end
