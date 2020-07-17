class NegotiationsController < ApplicationController
  respond_to :html, :js

  def index
    @q = Negotiation.includes(:payment, :store).ransack(params[:q])
    @negotiations = @q.result
  end

  def search
    @q = Negotiation.includes(:payment, :store).ransack(params[:q])
    @negotiations = @q.result
    respond_with(@negotiations) do |format|
      format.js
    end
  end
end
