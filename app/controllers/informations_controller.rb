class InformationsController < ApplicationController
  def index
    @informations = Information.all
  end

  def new
  end

  def create
    @information = Information.create(information_params)
    if @information.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def information_params
    params.require(:information).permit(:title,
                  :content)
  end
end
