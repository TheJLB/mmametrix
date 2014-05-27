class EventsController < ApplicationController
  def index
    if params[:query].present?
      @event = Event.search(params[:query])
    else
      @event = Event.paginate(:page => params[:page], :per_page => 20)
    end
  end

  def list
  end

  def show
    @event = Event.find(params[:id])
  end

  def edit
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.find(params[:id])
  end

  def upcoming_events
    if params[:query].present?
      @event = Event.search(params[:query])
    else
      @event = Event.paginate(:page => params[:page], :per_page => 20)
    end
  end

  def completed_events
    if params[:query].present?
      @event = Event.search(params[:query])
    else
      @event = Event.paginate(:page => params[:page], :per_page => 20)
    end    
  end

end
