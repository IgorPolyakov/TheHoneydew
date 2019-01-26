# frozen_string_literal: true

class CheckPolicy < ApplicationPolicy
  def destroy?
    user.is_admin?
  end

  def edit?
    user.is_admin?
  end
end
