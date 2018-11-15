class TherapyIntegrationsController < ApplicationController
  before_action :set_therapy_integration, only: [:show, :edit, :update, :destroy]

  # GET /therapy_integrations
  # GET /therapy_integrations.json
  def index
    @therapy_integrations = TherapyIntegration.all
  end

  # GET /therapy_integrations/1
  # GET /therapy_integrations/1.json
  def show
  end

  # GET /therapy_integrations/new
  def new
    @therapy_integration = TherapyIntegration.new
  end

  # GET /therapy_integrations/1/edit
  def edit
  end

  # POST /therapy_integrations
  # POST /therapy_integrations.json
  def create
    @therapy_integration = TherapyIntegration.new(therapy_integration_params)

    respond_to do |format|
      if @therapy_integration.save
        format.html { redirect_to @therapy_integration, notice: 'Therapy integration was successfully created.' }
        format.json { render :show, status: :created, location: @therapy_integration }
      else
        format.html { render :new }
        format.json { render json: @therapy_integration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /therapy_integrations/1
  # PATCH/PUT /therapy_integrations/1.json
  def update
    respond_to do |format|
      if @therapy_integration.update(therapy_integration_params)
        format.html { redirect_to @therapy_integration, notice: 'Therapy integration was successfully updated.' }
        format.json { render :show, status: :ok, location: @therapy_integration }
      else
        format.html { render :edit }
        format.json { render json: @therapy_integration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /therapy_integrations/1
  # DELETE /therapy_integrations/1.json
  def destroy
    @therapy_integration.destroy
    respond_to do |format|
      format.html { redirect_to therapy_integrations_url, notice: 'Therapy integration was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_therapy_integration
      @therapy_integration = TherapyIntegration.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def therapy_integration_params
      params.require(:therapy_integration).permit(:name)
    end
end
