class PagesController < ApplicationController
  def index;end
  def account
    @money = MoneyRecord.all.order(id: :desc)
  end
end
