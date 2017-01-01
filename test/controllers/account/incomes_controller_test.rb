require 'test_helper'

class Account::IncomesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @account_income = account_incomes(:one)
  end

  test "should get index" do
    get account_incomes_url
    assert_response :success
  end

  test "should get new" do
    get new_account_income_url
    assert_response :success
  end

  test "should create account_income" do
    assert_difference('Account::Income.count') do
      post account_incomes_url, params: { account_income: {  } }
    end

    assert_redirected_to account_income_url(Account::Income.last)
  end

  test "should show account_income" do
    get account_income_url(@account_income)
    assert_response :success
  end

  test "should get edit" do
    get edit_account_income_url(@account_income)
    assert_response :success
  end

  test "should update account_income" do
    patch account_income_url(@account_income), params: { account_income: {  } }
    assert_redirected_to account_income_url(@account_income)
  end

  test "should destroy account_income" do
    assert_difference('Account::Income.count', -1) do
      delete account_income_url(@account_income)
    end

    assert_redirected_to account_incomes_url
  end
end
