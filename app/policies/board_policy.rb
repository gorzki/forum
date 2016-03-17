class BoardPolicy
  attr_reader :current_user, :board

  def initialize(current_user, board)
    @current_user = current_user
    @board = board
  end

  def index?
    @current_user.admin? || @current_user.boards.include?(@board)
  end

  def edit?
    @current_user.admin?
  end

  def update?
    @current_user.admin?
  end

  def new?
    @current_user.admin?
  end

  def create?
    @current_user.admin?
  end

  def destroy?
    @current_user.admin?
  end

end
