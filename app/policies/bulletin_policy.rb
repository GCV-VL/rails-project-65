# frozen_string_literal: true

class BulletinPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      if user.admin?
        scope.all
      else
        scope.where(user:).or(scope.published)
      end
    end
  end

  def index?
    true
  end

  def show?
    record.published? || record.user == user || record.user.admin?
  end

  def create?
    user
  end

  def new?
    create?
  end

  def update?
    user == record.user
  end

  def edit?
    update?
  end

  def destroy?
    update?
  end

  def archive?
    update? || user.admin?
  end

  def to_moderate?
    update?
  end

  def reject?
    user.admin?
  end

  def publish?
    user.admin?
  end
end
