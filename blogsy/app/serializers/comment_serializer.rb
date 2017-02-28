class CommentSerializer < ActiveModel::Serializer
  belongs_to  :user
  attributes  :body
end
