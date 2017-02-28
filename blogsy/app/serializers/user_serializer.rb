class UserSerializer < ActiveModel::Serializer
  has_many    :posts
  has_many    :comments
  attributes :username, :post_count

  def post_count
    object.posts.count
  end

end
