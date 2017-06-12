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
end
