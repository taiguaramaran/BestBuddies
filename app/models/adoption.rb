class Adoption < ApplicationRecord
  belongs_to :user
  belongs_to :animal

  def self.user_animals_adopted(user)
    adoptions = Adoption.all.select do |adoption|
      adoption.user == user
    end
    adoptions.map do |adoption|
      adoption.animal
    end
  end
end
