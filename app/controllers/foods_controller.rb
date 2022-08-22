class FoodsController < ApplicationController
  def index
    @foods = Food.all
    #@foods = Dir.glob("*.PNG", base: "app/assets/images/sushineta")
  end

  def new
  end

  def create
    @food = Food.new(food_params)
    if @food.save
      redirect_to root_path
    else
      @user = current_user
      render template: "users/show"
    end
  end

  def show
    @food = Food.find(params[:id])
    @comment = Comment.new
  end

  private
  def food_params
    params.require(:food).permit(:sushi_neta_name,
                  :explanation,
                  :category_id,
                  categories_attributes: [:season_month],
                  :image)
  end
end
