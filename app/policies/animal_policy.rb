class AnimalPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    true
  end

  def index?
    !user.partner.nil?
  end

  def new?
    true
  end

  def show?
    true
  end

  def edit?
    record.user == user
  end

  def destroy?
    record.user == user
  end

  def rescue?
    record.partner.nil?
  end

  def confirmation?
    true
  end

  def my_animals?
    true
  end
end
