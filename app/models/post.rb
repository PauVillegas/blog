class Post < ApplicationRecord
  extend FriendlyId
  # friendly_id :titulo
  belongs_to :user
end
