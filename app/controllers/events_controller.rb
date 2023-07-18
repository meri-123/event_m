class EventsController < ApplicationController
  def index
    @events  = Schedule.all
  end

  def show
    @events = Schedule.find(params[:id])
  end
  def new
    @events = Schedule.new
  end
  def create
    @events = Schedule.new(events_params)

    if @events.save
      redirect_to events_path
    else
      render :new, status: :unprocessable_entity
    end
  end
  def edit
    @events = Schedule.find(params[:id])
  end

  def update
    @events = Schedule.find(params[:id])

    if @events.update(events_params)
      redirect_to events_path
    else
     render :edit, status: :unprocessable_entity
    end
  end
  def destroy
    @events = Schedule.find(params[:id])
    @events.destroy

    redirect_to root_path, status: :see_other
  end
  private
    def events_params
      params.require(:schedule).permit(:name, :phn_no, :email, :start_date, :end_date)
    end
end
