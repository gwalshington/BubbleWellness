class TherapyTypesController < ApplicationController
  before_action :set_therapy_type, only: [:show, :edit, :update, :destroy]

  # GET /therapy_types
  # GET /therapy_types.json
  def index
    @therapy_types = TherapyType.all
  end

  # GET /therapy_types/1
  # GET /therapy_types/1.json
  def show
  end

  # GET /therapy_types/new
  def new
    @therapy_type = TherapyType.new
  end

  # GET /therapy_types/1/edit
  def edit
  end

  # POST /therapy_types
  # POST /therapy_types.json
  def create
    @therapy_type = TherapyType.new(therapy_type_params)

    respond_to do |format|
      if @therapy_type.save
        format.html { redirect_to @therapy_type, notice: 'Therapy type was successfully created.' }
        format.json { render :show, status: :created, location: @therapy_type }
      else
        format.html { render :new }
        format.json { render json: @therapy_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /therapy_types/1
  # PATCH/PUT /therapy_types/1.json
  def update
    respond_to do |format|
      if @therapy_type.update(therapy_type_params)
        format.html { redirect_to @therapy_type, notice: 'Therapy type was successfully updated.' }
        format.json { render :show, status: :ok, location: @therapy_type }
      else
        format.html { render :edit }
        format.json { render json: @therapy_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /therapy_types/1
  # DELETE /therapy_types/1.json
  def destroy
    @therapy_type.destroy
    respond_to do |format|
      format.html { redirect_to therapy_types_url, notice: 'Therapy type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_therapy_type
      @therapy_type = TherapyType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def therapy_type_params
      params.require(:therapy_type).permit(:name)
    end
end
