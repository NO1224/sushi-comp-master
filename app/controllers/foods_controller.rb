class FoodsController < ApplicationController
  def index
    @foods = Food.all
  end

  def new
  end

  def create
    @food = Food.new(food_params)
    #inseason_ids = params[:food][:inseason_ids].split(",") 
    #@food.inseasons_save(inseason_ids)
    if @food.save
      @food_params = params[:inseason_ids]
      binding.pry
      @food_params.each do |inseason_id|
        #.pluck--カラムの値を配列として取り出すメソッド
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
                  #inseason_ids:[])
  end
end
