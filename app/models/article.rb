class Article < ApplicationRecord
  validates :title, presence: true, length: { minimum: 7, maximum: 50 }
  validates :description, presence: true, length: { minimum: 10, maximum: 250 }
  belongs_to :user
end
