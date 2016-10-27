class Post < ApplicationRecord
  belongs_to :city
  belongs_to :user
  has_many :comments

  validates :title , length: { in:1..200, too_long: "%{count} characters is the maximum allowed" }
  validates :content, :title, presence: true
end
