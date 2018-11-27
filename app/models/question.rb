class Question < ApplicationRecord
  has_many :user_questions, dependent: :destroy
  has_many :users, through: :user_questions
end
