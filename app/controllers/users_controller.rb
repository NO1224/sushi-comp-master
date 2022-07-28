class UsersController < ApplicationController
  def show
    @food = Food.new
    @information = Information.new
    @user = User.find(params[:id])
  end
end
