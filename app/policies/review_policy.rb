class ReviewPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def edit?
    return true
  end

  def update?
    return true
  end

  def create?
    return true
  end

  def destroy?
    return true
  end
end
