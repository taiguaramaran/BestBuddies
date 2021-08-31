class Animal < ApplicationRecord
  belongs_to :user
  belongs_to :partner, optional: true

  has_many_attached :photos
end
