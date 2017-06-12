class AnalysesController < ApplicationController
  def show
    @records = MoneyRecord.where(user: current_user).year(params[:year]).month(params[:month]).order(id: :desc)
    @incomes, @expenses = classify(@records)
  end

  private

  def classify(records)
    incomes = []
    expenses = []
    records.each do |record|
      case record.type
      when 'Income'
        incomes << record
      when 'Expense'
        expenses << record
      end
    end
    [incomes, expenses]
  end
end
