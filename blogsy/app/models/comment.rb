class Comment < ApplicationRecord
  belongs_to  :user,   required: true
  belongs_to  :post,   required: true, counter_cache: true
  validates  :body,  presence: true


end
