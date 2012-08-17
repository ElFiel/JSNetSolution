class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.admin?
      can :manage, :all
    else
      can :read, Contact
      can :create, Contact
      cannot [:index, :update, :show, :destroy], Contact 
    end
  end
end
