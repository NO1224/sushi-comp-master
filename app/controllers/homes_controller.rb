class HomesController < ApplicationController
  def index
    @informations = Information.limit(5).order("created_at DESC")
    #@informations = Information.all
    #if params[:year_month]
    #  @yearmonth = params[:year_month]
    #  @informations = Information.where("to_char(created_at, 'YYYYMM') = '"+@yearmonth+"'").page(params[:page])
    #else
    #  @informations = Information.recent.page(params[:page])
    #end
  end
  
end
