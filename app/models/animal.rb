class Animal < ApplicationRecord
  belongs_to :user
  belongs_to :partner, optional: true
end
