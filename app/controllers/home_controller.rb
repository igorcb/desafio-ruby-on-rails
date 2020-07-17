class HomeController < ApplicationController
  def index; end

  def upload
    result = Cnab::ReadService.new(params[:archive]).call
    redirect_to negotiations_path
  end
end
