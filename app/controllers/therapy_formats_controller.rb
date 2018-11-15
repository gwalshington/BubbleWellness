class TherapyFormatsController < ApplicationController
  before_action :set_therapy_format, only: [:show, :edit, :update, :destroy]

  # GET /therapy_formats
  # GET /therapy_formats.json
  def index
    @therapy_formats = TherapyFormat.all
  end

  # GET /therapy_formats/1
  # GET /therapy_formats/1.json
  def show
  end

  # GET /therapy_formats/new
  def new
    @therapy_format = TherapyFormat.new
  end

  # GET /therapy_formats/1/edit
  def edit
  end

  # POST /therapy_formats
  # POST /therapy_formats.json
  def create
    @therapy_format = TherapyFormat.new(therapy_format_params)

    respond_to do |format|
      if @therapy_format.save
        format.html { redirect_to @therapy_format, notice: 'Therapy format was successfully created.' }
        format.json { render :show, status: :created, location: @therapy_format }
      else
        format.html { render :new }
        format.json { render json: @therapy_format.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /therapy_formats/1
  # PATCH/PUT /therapy_formats/1.json
  def update
    respond_to do |format|
      if @therapy_format.update(therapy_format_params)
        format.html { redirect_to @therapy_format, notice: 'Therapy format was successfully updated.' }
        format.json { render :show, status: :ok, location: @therapy_format }
      else
        format.html { render :edit }
        format.json { render json: @therapy_format.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /therapy_formats/1
  # DELETE /therapy_formats/1.json
  def destroy
    @therapy_format.destroy
    respond_to do |format|
      format.html { redirect_to therapy_formats_url, notice: 'Therapy format was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_therapy_format
      @therapy_format = TherapyFormat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def therapy_format_params
      params.require(:therapy_format).permit(:name)
    end
end
