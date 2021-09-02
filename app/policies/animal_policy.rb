class AnimalPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    return true
  end

  def index?
    !user.partner.nil?
  end

  def new?
    true
  end

  def show?
    return true
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
end
