class Animal < ApplicationRecord
  has_many_attached :photos
  belongs_to :user
  belongs_to :partner, optional: true
end
