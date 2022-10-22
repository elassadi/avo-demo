# frozen_string_literal: true

class MammalPolicy < ApplicationPolicy

  def index?
    true
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

  def update?
    true
  end

  def edit?
    update?
  end

  def destroy?
    true
  end


  def attach_comments?
    false
  end
  def detach_comments?
    false
  end



  class Scope
    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      # raise NotImplementedError, "You must define #resolve in #{self.class}"
      scope.all
    end

    private

    attr_reader :user, :scope
  end
end
