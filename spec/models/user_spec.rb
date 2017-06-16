require 'rails_helper'

RSpec.describe User, type: :model do
  it 'pass valid when email format and password is leagal, and password_confirmation equel to password' do
    expect(create(:user)).to be_valid
  end

  it 'can not pass valid when email format is illeagal' do
    password = Faker::Internet.password
    user = User.new(email: 'wrong.email.com', password: password, password_confirmation: password)
    expect(user).not_to be_valid
  end
  it 'can not pass valid when password is illeagal' do
    password = '123'
    user = User.new(email: Faker::Internet.free_email, password: password, password_confirmation: password)
    expect(user).not_to be_valid
  end

  it 'can not pass valid when password != password_confirmation' do
    user = User.new(email: Faker::Internet.free_email, password: Faker::Internet.password, password_confirmation: Faker::Internet.password)
    expect(user).not_to be_valid
  end
end
