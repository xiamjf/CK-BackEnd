class ResponseSerializer < ActiveModel::Serializer
  attributes :id, :prompt
  has_one :question
end
