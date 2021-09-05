class Animal < ApplicationRecord
  CATEGORIES = ["Cat", "Dog"]
  AGES = ["Up to six months old", "Up to 2 years old", "Up to 5 years old", "More than 5 years old"]
  GENDER = ['Male', 'Female']
  SIZE = ['Small', 'Medium', 'Large']

  has_many_attached :photos
  belongs_to :user
  belongs_to :partner, optional: true

  validates  :name, :photos, presence: true
  validates :category, inclusion: { in: CATEGORIES }
  validates :age, inclusion: { in: AGES}
  validates :gender, inclusion: { in: GENDER}
  validates :size, inclusion: { in: SIZE}
end
