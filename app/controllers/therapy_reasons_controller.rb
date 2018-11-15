class TherapyReasonsController < ApplicationController
  before_action :set_therapy_reason, only: [:show, :edit, :update, :destroy]

  # GET /therapy_reasons
  # GET /therapy_reasons.json
  def index
    @therapy_reasons = TherapyReason.all
  end

  # GET /therapy_reasons/1
  # GET /therapy_reasons/1.json
  def show
  end

  # GET /therapy_reasons/new
  def new
    @therapy_reason = TherapyReason.new
  end

  # GET /therapy_reasons/1/edit
  def edit
  end

  # POST /therapy_reasons
  # POST /therapy_reasons.json
  def create
    @therapy_reason = TherapyReason.new(therapy_reason_params)

    respond_to do |format|
      if @therapy_reason.save
        format.html { redirect_to @therapy_reason, notice: 'Therapy reason was successfully created.' }
        format.json { render :show, status: :created, location: @therapy_reason }
      else
        format.html { render :new }
        format.json { render json: @therapy_reason.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /therapy_reasons/1
  # PATCH/PUT /therapy_reasons/1.json
  def update
    respond_to do |format|
      if @therapy_reason.update(therapy_reason_params)
        format.html { redirect_to @therapy_reason, notice: 'Therapy reason was successfully updated.' }
        format.json { render :show, status: :ok, location: @therapy_reason }
      else
        format.html { render :edit }
        format.json { render json: @therapy_reason.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /therapy_reasons/1
  # DELETE /therapy_reasons/1.json
  def destroy
    @therapy_reason.destroy
    respond_to do |format|
      format.html { redirect_to therapy_reasons_url, notice: 'Therapy reason was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_therapy_reason
      @therapy_reason = TherapyReason.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def therapy_reason_params
      params.require(:therapy_reason).permit(:name)
    end
end
