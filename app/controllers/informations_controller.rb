class InformationsController < ApplicationController
  def index
    @informations = Information.all
  end

  def new
  end

  def create
    @information = Information.new(information_params)
    if @information.save
      redirect_to root_path
    else
      @user = current_user
      render template: "users/show"
    end
  end

  private
  def information_params
    params.require(:information).permit(:title,
                  :content)
  end

end
