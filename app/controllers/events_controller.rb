class EventsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit , :update, :destroy]
  before_action :authorize_user!, only: [:update, :edit, :destroy]
  # before_action :print_test
  before_action :find_event, only: [:show,:edit,:update,:destroy]


  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
    
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if(@event.save)
      redirect_to @event
    else
      render :new
    end
  end

  def edit

    
  end

  def update
    if(@event.update(event_params))
      redirect_to @event
    else
      render :edit
    end
  end

  def destroy
    @event.delete

    redirect_to events_path
  end
  

  private

  def event_params
    params.require(:event).permit(:name,:location,:notes)
    
  end

  def find_event
    @event = Event.find(params[:id])
  end

  def authorize_user!
    return true if current_user
    
  end

end