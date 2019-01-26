# frozen_string_literal: true

class AdminPolicy < ApplicationPolicy
  def index?
    user.is_admin?
  end
end
