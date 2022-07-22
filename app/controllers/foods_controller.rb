class FoodsController < ApplicationController
  def index
    @foods = Food.all
    #@foods = Dir.glob("*.PNG", base: "app/assets/images/sushineta")
  end

  def new
    @food = Food.new
  end

  def create
    @food = Food.new(food_params)
    if @food.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @food = Food.find(params[:id])
  end

  private
  def food_params
    params.require(:food).permit(:sushi_neta_name,
                                 :explanation,
                                 :category_id,
                                 :season_month,
                                 :image)
  end
end
