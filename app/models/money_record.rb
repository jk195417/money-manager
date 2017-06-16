class MoneyRecord < ApplicationRecord
  belongs_to :user
  # find by month
  scope :month, ->(month = nil) {
    month = (month.blank? ? Date.today.month : month.to_i)

    where('extract(month from created_at) = ?', month)
  }
  # find by year
  scope :year, ->(year = nil) {
    year = (year.blank? ? Date.today.year : year.to_i)

    where('extract(year from created_at) = ?', year)
  }

  validate :money_validator

  private

  def money_must_greater_then_0
    if money && (money <= 0)
      errors.add(:money, I18n.t('record.errors.money_less_then_0'))
    end
  end

  def money_validator
    validates_presence_of :money
    validates_numericality_of :money
    money_must_greater_then_0
  end
end
