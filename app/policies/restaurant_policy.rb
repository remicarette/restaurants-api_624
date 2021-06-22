class RestaurantPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def create?
    owner?
  end

  def update?
    # @record   => @restaurant (authorize @restaurant)
    # @user     => current_user
    owner?
  end

  def destroy?
    owner?
  end

  private

  def owner?
    @record.user == @user
  end


end
