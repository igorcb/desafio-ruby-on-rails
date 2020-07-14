class HomeController < ApplicationController
  def index
  end

  def upload
    result = Cnab::ReadService.new(params[:archive]).call
    render :index
  end

end
