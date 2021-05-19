class TicketingController < ApplicationController
  def index
    @name = params[:name]
    @email = params[:email]
  end

  def code
    @name = params[:name]
    @code = SecureRandom.uuid

    while Ticket.find_by_code(@code) != nil
      @code = SecureRandom.uuid
    end
    @event = Event.find(params[:event])
    @new_seats = @event.seats - 1
    query = "UPDATE events set seats = " + @new_seats.to_s+" WHERE id = " + params[:event]
    ActiveRecord::Base.connection.execute(query)
    object = Ticket.new(:name => params[:name], :email => params[:email], :event => @event.name, :code => @code.to_s)
    object.save

  end

end

