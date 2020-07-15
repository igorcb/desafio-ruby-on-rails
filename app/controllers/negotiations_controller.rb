class NegotiationsController < ApplicationController
  def index
    @negotiations = Negotiation.all
  end
end
