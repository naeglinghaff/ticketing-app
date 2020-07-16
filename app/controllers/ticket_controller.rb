class TicketController < ApplicationController

  # GET tickets/new
  def new
    @ticket = Ticket.new
  end

  # POST tickets/new
  def create
    @ticket = Ticket.new(ticket_params)
    @ticket.user_id = current_user.id if user_signed_in?
    if @ticket.save
      return json { @ticket }
    else
      return json { error }
    end
  end

  # GET /tickets
  def index
    @tickets = Ticket.order(:created_at).reverse_order
  end

  private

  def ticket_params
    params.require(:ticket).permit(:title, :description, :priority)
  end
end
