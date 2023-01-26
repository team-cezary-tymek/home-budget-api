class ExpensesController < ApplicationController
  before_action :set_expense, only: %i[show update destroy]

  # GET /expenses
  def index
    if params[:category_id].present?
      @expenses = Expense.where(category_id: params[:category_id])
    else
      @expenses = Expense.all
    end

    render json: @expenses.as_json()
  end

  # GET /expenses/1
  def show
    render json: @expense.as_json()
  end

  # POST /expenses
  def create
    @expense = Expense.new(expense_params)

    if @expense.save
      render json: @expense, status: :created, location: @expense
    else
      render json: @expense.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /expenses/1
  def update
    if @expense.update(expense_params)
      render json: @expense
    else
      render json: @expense.errors, status: :unprocessable_entity
    end
  end

  # DELETE /expenses/1
  def destroy
    @expense.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_expense
    @expense = Expense.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def expense_params
    params.require(:expense).permit(:name, :category_id, :value, :date)
  end
end
