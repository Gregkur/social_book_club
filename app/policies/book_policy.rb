class BookPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user)
    end

    def index?
      return true
    end
  end
      scope.all
    end
  end

  def create?
    true
  end

end
