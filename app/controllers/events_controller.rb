class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  before_action :require_user, except: [:index, :show]
  before_action :require_same_user, only: [:edit, :update, :destroy]

  # GET /events
  # GET /events.json
  def index
    if params[:keywords].present?
      @keywords = params[:keywords]
      event_search_term = SearchTerm.new(@keywords)
      @events = Event.where(
          event_search_term.where_clause,
          event_search_term.where_args).
        order(event_search_term.order)
    end

    if params[:keywords].present?
      @events = @events.paginate(:page => 1, :per_page =>  5).reverse_order
    else
      @events = Event.paginate(:page => params[:page], :per_page => 5).reverse_order
    end

    if params[:sort_by].present?
      logger.debug "parameters present: :sort_by => #{params[:sort_by]}"
      if params[:sort_by].downcase == "desc"
        @events = @events.order(:start_date).reverse_order
        logger.debug ("Reordered")
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
    @event.user = current_user

    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
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
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
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
      params.require(:event).permit(:name, :description, :start_date, :end_date, :website, :company_name, :address_line1, :address_line2, :city, :state, :zip, :country, :latitude, :longitude, :cancelled, :user_id)
    end

    def require_same_user
      if current_user != @event.user && !current_user.admin?
        flash[:danger] = "You can only edit or delete your own articles"
        redirect_to root_path
      end
    end
end
