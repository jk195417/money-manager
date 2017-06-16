require 'rails_helper'

RSpec.describe MoneyRecord, type: :model do
  r = Random.new
  it 'pass valid when money_record.money > 0' do
    expect(MoneyRecord.new(money: 1)).to be_valid
    expect(create(:money_record)).to be_valid
    expect(create(:income)).to be_valid
    expect(create(:expense)).to be_valid
  end

  it 'can not pass valid when money_record.money <= 0' do
    expect(MoneyRecord.new(money: 0)).not_to be_valid
    expect(MoneyRecord.new(money: -1)).not_to be_valid
    expect(MoneyRecord.new(money: 0 - Faker::Number.decimal(r.rand(1..4), r.rand(1..4)).to_f)).not_to be_valid
  end
end
