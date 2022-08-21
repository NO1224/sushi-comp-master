class HomesController < ApplicationController
  def index
    @informations = Information.limit(5).order("created_at DESC")
    @archives = Information.divide_monthly
  end
  
end
