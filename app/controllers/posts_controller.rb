class PostsController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def new
    @post = Post.new
  end

  def create
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end
end
