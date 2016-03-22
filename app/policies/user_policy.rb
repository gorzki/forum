class UserPolicy
  attr_reader :current_user, :user

  def initialize(current_user, user)
    @current_user = current_user
    @user = user
  end

  def index?
    @current_user.admin?
  end

  def show?
    @current_user.admin? || @current_user == @user
  end

  def edit?
    @current_user.admin? || @current_user == @user
  end

  def destroy?
   return false if @current_user == @user
   @current_user.admin?
  end


end
