class ServicesController < ApplicationController
  def index
    @services = ServiceContent.all
    #javascript使用
    #if (ボタン1：category:1のみ)
    #@services = ServiceContent.where(category: 1)
    #else (ボタン2:category:2のみ)
    #@services = ServiceContent.where(category: 2)

  end

end
