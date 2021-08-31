class Animal < ApplicationRecord
  CATEGORIES = ["CAT", "DOG"]
  AGES = ["Até seis meses", "Até 2 anos", "Até 5 anos", "Mais que 5 anos"]

  has_many_attached :photos
  belongs_to :user
  belongs_to :partner, optional: true

  validates :category, inclusion: { in: CATEGORIES }
  validates :age, inclusion: { in: AGES}
end
