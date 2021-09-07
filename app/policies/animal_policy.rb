class AnimalPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    user.partner.nil?
  end

  def index?
    !user.partner.nil?
  end

  def new?
    create?
  end

  def show?
    true
  end

  def edit?
    record.user == user || record.partner == user.partner
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
    create?
  end

  def rescued_animals?
    user.partner.nil?
  end

  def adopted_pets?
    user.partner.nil?
  end
end
