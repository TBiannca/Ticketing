class TicketingController < ApplicationController
  def index
  end

  def code
    @code = SecureRandom.uuid
  end

end
