class PartnerPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    user.partner.nil?
  end

  def show?
    return true
  end

  def edit?
    record == user.partner
  end

  def destroy?
    record == user.partner
  end
end
