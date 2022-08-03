class PostsController < ApplicationController
  # GET /posts
  # GET /posts.json
  def index
    @post = Post.all
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # POST /posts
  def create
    @post = Post.new(post_params)
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end
end
