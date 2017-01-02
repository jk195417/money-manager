class Account::IncomesController < ApplicationController
  before_action :set_income, only: [:show, :edit, :update, :destroy]

  def index
    @incomes = Income.all.order(id: :desc)
  end

  def show
  end

  def new
    @income = Income.new
  end

  def edit
  end

  def create
    @income = Income.new(income_params)
    if @income.save
      redirect_to account_path, notice: 'Income was successfully created.'
    else
      render :new
    end
  end

  def update
    if @income.update(income_params)
      redirect_to account_path, notice: 'Income was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @income.destroy
    redirect_to account_path, notice: 'Income was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_income
      @income = Income.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def income_params
      params.require(:income).permit(:money, :label, :description)
    end
end
