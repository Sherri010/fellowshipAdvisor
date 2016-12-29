class CommentsController < ApplicationController
after_filter :allow_iframe

  def new
    @comment = Comment.new
    @post = Post.find(params[:post_id])
    @city = City.friendly.find(params[:city_id])
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post
              .comments
              .new(comment_params)

    @comment.user_id = current_user.id
    @comment.save

    if @comment.save
      flash[:success] = "New comment successfully created!"
      redirect_to city_post_path(params[:city_id], @post.id)
    else
      flash[:error] = "Sorry, something went terribly amiss."
      redirect_to :back
    end
  end

  def edit
    @post = Post.find(params[:post_id])
    @city = City.friendly.find(params[:city_id])
    @comment = Comment.find(params[:id])
    if current_user.id == @comment.user_id
      render :edit
    else
      flash[:error] = "You are not allowed to manipulate other users' comments!"
      redirect_to city_post_path(params[:city_id], @post.id)
    end
  end

  def update
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    @comment.update_attributes(comment_params)
    redirect_to city_path(params[:city_id])
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to city_path(params[:city_id])
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end

end # end comment controller
