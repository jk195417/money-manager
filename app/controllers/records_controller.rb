class RecordsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_record, only: [:show, :edit, :update, :destroy]
  def index
    @q = MoneyRecord.ransack(params[:q])
    @records = @q.result(distinct: true).where(user: current_user).order(id: :desc)
  end

  def show; end

  def expense
    @record = Expense.new
    render :new
  end

  def income
    @record = Income.new
    render :new
  end

  def edit; end

  def create
    @record = MoneyRecord.new(record_params)
    @record.user = current_user
    if @record.save
      flash[:notice] = t('record.created')
      redirect_to records_url
    else
      render :new
    end
  end

  def update
    if @record.update(record_params)
      flash[:notice] = t('record.updated')
      redirect_to records_url
    else
      render :edit
    end
  end

  def destroy
    @record.destroy
    flash[:notice] = t('record.destroyed')
    redirect_to records_url
  end

  private

  def find_record
    @record = MoneyRecord.find_by!(id: params[:id], user: current_user)
  end

  def record_params
    params.require(:record).permit(:money, :type, :label, :description)
  end
end
