class Answer < ActiveRecord::Base
  belongs_to :question
  belongs_to :best_answer

  validates :description,
    presence: true,
    length: { minimum: 50 }
end
