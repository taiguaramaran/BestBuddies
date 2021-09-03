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
    record.user == user
  end

  def destroy?
    record.user == user
  end
end
