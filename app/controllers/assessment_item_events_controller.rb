class AssessmentItemEventsController < ApplicationController
  before_action :set_assessment_item_event, only: [:show, :edit, :update, :destroy]

  def load_events
  end

  # GET /assessment_item_events
  # GET /assessment_item_events.json
  def index
    @assessment_item_events = AssessmentItemEvent.all
  end

  # GET /assessment_item_events/1
  # GET /assessment_item_events/1.json
  def show
  end

  # GET /assessment_item_events/new
  def new
    @assessment_item_event = AssessmentItemEvent.new
  end

  # GET /assessment_item_events/1/edit
  def edit
  end

  # POST /assessment_item_events
  # POST /assessment_item_events.json
  def create
    @assessment_item_event = AssessmentItemEvent.new(assessment_item_event_params)

    respond_to do |format|
      if @assessment_item_event.save
        format.html { redirect_to @assessment_item_event, notice: 'Assessment item event was successfully created.' }
        format.json { render :show, status: :created, location: @assessment_item_event }
      else
        format.html { render :new }
        format.json { render json: @assessment_item_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /assessment_item_events/1
  # PATCH/PUT /assessment_item_events/1.json
  def update
    respond_to do |format|
      if @assessment_item_event.update(assessment_item_event_params)
        format.html { redirect_to @assessment_item_event, notice: 'Assessment item event was successfully updated.' }
        format.json { render :show, status: :ok, location: @assessment_item_event }
      else
        format.html { render :edit }
        format.json { render json: @assessment_item_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assessment_item_events/1
  # DELETE /assessment_item_events/1.json
  def destroy
    @assessment_item_event.destroy
    respond_to do |format|
      format.html { redirect_to assessment_item_events_url, notice: 'Assessment item event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assessment_item_event
      @assessment_item_event = AssessmentItemEvent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def assessment_item_event_params
      params.require(:assessment_item_event).permit(:actorId, :action, :objectId, :maxScore, :isPartOf, :generatedId, :generatedCount, :generatedStartedAtTime)
    end
end
