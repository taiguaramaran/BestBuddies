class Partner < ApplicationRecord
    has_many :users
    has_many :animals
end
