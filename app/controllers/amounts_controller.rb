class AmountsController < ApplicationController
  before_action :set_amount, only: [:show, :edit, :update, :destroy]

  # GET /amounts
  # GET /amounts.json
  def index
    @amounts = Amount.all
    @amount = Amount.new
  end

  # GET /amounts/1
  # GET /amounts/1.json
  def show
  end

  # GET /amounts/new
  def new
    @amount = Amount.new
  end

  # GET /amounts/1/edit
  def edit
  end

  # POST /amounts
  # POST /amounts.json
  def create
    @amount = Amount.new(amount_params)

    respond_to do |format|
      if @amount.save
        format.html { redirect_to amounts_path, notice: 'Amount was successfully created.' }
        format.json { render action: 'show', status: :created, location: @amount }
      else
        format.html { render action: 'new' }
        format.json { render json: @amount.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /amounts/1
  # PATCH/PUT /amounts/1.json
  def update
    respond_to do |format|
      if @amount.update(amount_params)
        format.html { redirect_to @amount, notice: 'Amount was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @amount.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /amounts/1
  # DELETE /amounts/1.json
  def destroy
    @amount.destroy
    respond_to do |format|
      format.html { redirect_to amounts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_amount
      @amount = Amount.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def amount_params
      params.require(:amount).permit(:cantidad, :unidad)
    end
end
