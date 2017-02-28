class Post < ApplicationRecord
  belongs_to  :user,  counter_cache: true
  has_many    :comments
  validates   :user,  presence: true
  validates   :title, presence: true
  validates   :body,  presence: true
end
