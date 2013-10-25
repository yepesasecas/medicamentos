class DurationsController < ApplicationController
  before_action :set_duration, only: [:show, :edit, :update, :destroy]

  # GET /durations
  # GET /durations.json
  def index
    @durations = Duration.all
    @duration = Duration.new
  end

  # GET /durations/1
  # GET /durations/1.json
  def show
  end

  # GET /durations/new
  def new
    @duration = Duration.new
  end

  # GET /durations/1/edit
  def edit
  end

  # POST /durations
  # POST /durations.json
  def create
    @duration = Duration.new(duration_params)

    respond_to do |format|
      if @duration.save
        format.html { redirect_to durations_path, notice: 'Duration was successfully created.' }
        format.json { render action: 'show', status: :created, location: @duration }
      else
        format.html { render action: 'new' }
        format.json { render json: @duration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /durations/1
  # PATCH/PUT /durations/1.json
  def update
    respond_to do |format|
      if @duration.update(duration_params)
        format.html { redirect_to @duration, notice: 'Duration was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @duration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /durations/1
  # DELETE /durations/1.json
  def destroy
    @duration.destroy
    respond_to do |format|
      format.html { redirect_to durations_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_duration
      @duration = Duration.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def duration_params
      params.require(:duration).permit(:duracion, :dias_duracion)
    end
end
