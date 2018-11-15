class TherapyBudgetsController < ApplicationController
  before_action :set_therapy_budget, only: [:show, :edit, :update, :destroy]

  # GET /therapy_budgets
  # GET /therapy_budgets.json
  def index
    @therapy_budgets = TherapyBudget.all
  end

  # GET /therapy_budgets/1
  # GET /therapy_budgets/1.json
  def show
  end

  # GET /therapy_budgets/new
  def new
    @therapy_budget = TherapyBudget.new
  end

  # GET /therapy_budgets/1/edit
  def edit
  end

  # POST /therapy_budgets
  # POST /therapy_budgets.json
  def create
    @therapy_budget = TherapyBudget.new(therapy_budget_params)

    respond_to do |format|
      if @therapy_budget.save
        format.html { redirect_to @therapy_budget, notice: 'Therapy budget was successfully created.' }
        format.json { render :show, status: :created, location: @therapy_budget }
      else
        format.html { render :new }
        format.json { render json: @therapy_budget.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /therapy_budgets/1
  # PATCH/PUT /therapy_budgets/1.json
  def update
    respond_to do |format|
      if @therapy_budget.update(therapy_budget_params)
        format.html { redirect_to @therapy_budget, notice: 'Therapy budget was successfully updated.' }
        format.json { render :show, status: :ok, location: @therapy_budget }
      else
        format.html { render :edit }
        format.json { render json: @therapy_budget.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /therapy_budgets/1
  # DELETE /therapy_budgets/1.json
  def destroy
    @therapy_budget.destroy
    respond_to do |format|
      format.html { redirect_to therapy_budgets_url, notice: 'Therapy budget was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_therapy_budget
      @therapy_budget = TherapyBudget.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def therapy_budget_params
      params.require(:therapy_budget).permit(:price)
    end
end
