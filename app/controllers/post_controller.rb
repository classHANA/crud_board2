class PostController < ApplicationController
  
  before_action :set_post, only: [:show, :edit, :updat, :destroy]

  def new
  end

  def create
    @title = params[:title]
    @content = params[:content]

    Post.create(title: @title, content: @content)
    redirect_to '/post/index'

  end

  def show 
  end

  def index
    @posts = Post.all
  end

  def destroy
    @post.destroy
    redirect_to '/post/index'
  end

  def edit 
  end

  def update
    
    @title = params[:title]
    @content = params[:content]
    
    @post.update(title: @title, content: @content)
    redirect_to "/post/show/#{@id}"
  end

  private

    def set_post
      @id = params[:id]
      @post = Post.find(@id)
    end

end




















