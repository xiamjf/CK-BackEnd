# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :user_questions
  has_many :questions, through: :user_questions
end
