class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  # GET /events
  # GET /events.json
  def index
    @events = Event.all
    @jan = []
    @fev = []
    @mar = []
    @abr = []
    @mai = []
    @jun = []
    @jul = []
    @ago = []
    @set = []
    @out = []
    @nov = []
    @dez = []
    unless @events.empty?
      for event in @events do
        if event.event_date.strftime("%B") == "January"
          @jan << event
        elsif event.event_date.strftime("%B") == "February"
          @fev << event
        elsif event.event_date.strftime("%B") == "March"
          @mar << event
        elsif event.event_date.strftime("%B") == "April"
          @abr << event
        elsif event.event_date.strftime("%B") == "May"
          @mai << event
        elsif event.event_date.strftime("%B") == "June"
          @jun << event
        elsif event.event_date.strftime("%B") == "July"
          @jul << event
        elsif event.event_date.strftime("%B") == "August"
          @ago << event
        elsif event.event_date.strftime("%B") == "September"
          @set << event
        elsif event.event_date.strftime("%B") == "October"
          @out << event
        elsif event.event_date.strftime("%B") == "November"
          @nov << event
        elsif event.event_date.strftime("%B") == "December"        
          @dez << event
        end
      end
    end

  end

  # GET /events/1
  # GET /events/1.json
  def show
  end

  # GET /events/new
  def new
    @event = Event.new
  end

  # GET /events/1/edit
  def edit
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params)

    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'Event was successfully created.' }
        format.json { render action: 'show', status: :created, location: @event }
      else
        format.html { render action: 'new' }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:event_date, :time, :name, :place, :more_information)
    end
end
