class PostPolicy
  attr_reader :current_user, :post

  def initialize(current_user, post)
    @current_user = current_user
    @post = post
  end
  def index?
    @current_user.admin? || @current_user.user? || @current_user.moderator?
  end
  def show?
    @current_user.admin? || @current_user.user? || @current_user.moderator?
  end

  def new?
    @current_user.admin? || @current_user.user? || @current_user.moderator?
  end

  def create?
    @current_user.admin? || @current_user.user? || @current_user.moderator?
  end

  def edit_ajax?
    @current_user.admin? || @current_user.id == @post.user_id
  end

  def update?
    @current_user.admin? || @current_user.id == @post.user_id
  end

  def destroy?
   @current_user.admin? || @current_user.id == @post.user_id
  end
end
