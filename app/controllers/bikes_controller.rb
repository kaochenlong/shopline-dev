class BikesController < ApplicationController
  def index
    if params[:keyword].present?
      @sites = Youbike::BikeInfo.call(keyword: params[:keyword])
    else
      @sites = []
    end
  end
end
