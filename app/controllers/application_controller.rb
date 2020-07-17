require "application_responder"

class ApplicationController < ActionController::Base
  self.responder = ApplicationResponder
  before_action :authenticate_user!
  respond_to :html, :js

end
