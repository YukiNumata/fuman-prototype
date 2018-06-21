class Fuman < ApplicationRecord
  validates :content, presence: true
  has_many :likes
  has_many :dislikes
end
