class Animal < ApplicationRecord
  CATEGORIES = ['dog']

  belongs_to :user
  belongs_to :partner, optional: true
  has_many_attached :photos

  validates :category, inclusion: { in: CATEGORIES }
end
