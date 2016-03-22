class PostPolicy < BoardPolicy
  attr_reader :current_user, :post, :board

  def initialize(current_user, post)
    @current_user = current_user
    @post = post
  end

  def index?
    @current_user.admin? || @current_user.board_ids.include?(@post.b)
  end

  def show?
    @current_user.admin?
  end

  def create?
    @current_user.admin?
  end

  def edit_ajax?
    @current_user.admin?
  end

  def update?
    @current_user.admin?
  end

  def destroy?
   @current_user.admin?
  end

end
