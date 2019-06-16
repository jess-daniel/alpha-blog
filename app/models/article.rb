class Article < ApplicationRecord
  validates :title, presence: true, length: {minimum: 3, maxium: 50}
  validates :description, presence: true, length: {minimum: 10, maxium: 300}
end
