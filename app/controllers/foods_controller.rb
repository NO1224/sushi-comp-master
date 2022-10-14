class FoodsController < ApplicationController
  def index
    @foods = Food.all
    #@foods = Dir.glob("*.PNG", base: "app/assets/images/sushineta")
  end

  def new
  end

  def create
    @food = Food.new(food_params)
    @inseason_ids = params[:food][:inseason_ids]
    if @food.save
      binding.pry
      @inseason_ids.each do |inseason_id|
        inseason=Season.find(inseason_id.to_i)
        @food.inseasons << inseason #関連付ける
      end
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
    params.require(:food).permit(
                  :sushi_neta_name,
                  :explanation,
                  :category_id,
                  :image)
                  #{ inseason_ids:[] })
  end
end
