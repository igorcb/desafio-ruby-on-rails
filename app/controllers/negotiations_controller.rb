class NegotiationsController < ApplicationController
  respond_to :html, :js

  def index
    @q = Negotiation.ransack(params[:q])
    @negotiations = Negotiation.all
  end

  def search
    @q = Negotiation.includes(:payment, :store).ransack(params[:q])
    @negotiations = @q.result
    respond_with(@negotiations) do |format|
      format.js
    end
  end

end
