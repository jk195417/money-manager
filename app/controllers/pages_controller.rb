class PagesController < ApplicationController
  def index;end
  def account
    @money = MoneyRecord.all
  end
end
