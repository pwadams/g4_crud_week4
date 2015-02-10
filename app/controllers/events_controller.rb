class EventsController < ApplicationController
  def index

    @events  = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    event = Event.new(event_params)
    event.save

    redirect_to events_path
  end

  def show
    @event = Event.find(params[:id])
  end

  private

  def event_params
    params.require(:event).permit(:Date, :Location, :Description, :Capacity, :Requires_id, )
  end
end
