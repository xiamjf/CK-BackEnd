class Response < ApplicationRecord
  belongs_to :question, dependent: :destroy
end
