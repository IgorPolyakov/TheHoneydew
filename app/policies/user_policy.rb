# frozen_string_literal: true

class UserPolicy < ApplicationPolicy
  def index?
    user.is_admin?
  end

  def destroy?
    user.is_admin?
    return false if user.id == 1
  end

  def show?
    user.is_admin?
  end

  def edit?
    user.is_admin?
  end
end
