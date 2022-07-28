class CommentsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  def index
    @food = Food.find(params[:food_id])
    @comments = @food.comments
  end

  def new
    @food = Food.find(params[:food_id])
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
      redirect_to food_comments_path(@comment.food)
    else
      @food = Food.find(params[:food_id])
      render template: "comments/new"
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:food_id, :rate, :content)
  end
end
