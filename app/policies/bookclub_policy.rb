class BookclubPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
  
  def index?
    return true
  end

  def show?
    true
  end

  def create?
    true
  end

  def new?
    create?
  end
end
