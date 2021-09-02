class Animal < ApplicationRecord
  CATEGORIES = ["cat", "dog"]
  AGES = ["Up to six months old", "Up to 2 years old", "Up to 5 years old", "More than 5 years old"]

  has_many_attached :photos
  belongs_to :user
  belongs_to :partner, optional: true

  validates :photos, presence: true
  validates :category, inclusion: { in: CATEGORIES }
  validates :age, inclusion: { in: AGES}
end
