class Comment < ApplicationRecord
  belongs_to  :user,   optional: true
  belongs_to  :post,   required: true, counter_cache: true
  validates   :body,   presence: true
end
