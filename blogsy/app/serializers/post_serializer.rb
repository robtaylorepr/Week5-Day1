class PostSerializer < ActiveModel::Serializer
  belongs_to  :user
  has_many    :comments
  attributes  :title, :body

end
