class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  # add create method here
  def create
    # Create a new Post instance and set that to
    # an instance varable @post
    @post = Post.new
    # Pass in the parameters from the form
    # and set that to an instace varable @post
    ## pull in form data - stuff that a user has typed in and submitted.
    @post.title = params[:title]
    @post.description = params[:description]
    # Save the record
    @post.save
    # redirect to /posts/:id - the post in question
    redirect_to post_path(@post)
  end
end
