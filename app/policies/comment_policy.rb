# frozen_string_literal: true

class CommentPolicy < ApplicationPolicy

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
    binding.pry
    false
  end

  def edit?
    update?
  end

  def destroy?
    true
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
