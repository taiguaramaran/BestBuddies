class AdoptionPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
  def create?
    true
  end
  def adoption_confirmation?
    true
  end
end
