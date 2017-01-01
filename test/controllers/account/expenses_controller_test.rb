require 'test_helper'

class Account::ExpensesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @account_expense = account_expenses(:one)
  end

  test "should get index" do
    get account_expenses_url
    assert_response :success
  end

  test "should get new" do
    get new_account_expense_url
    assert_response :success
  end

  test "should create account_expense" do
    assert_difference('Account::Expense.count') do
      post account_expenses_url, params: { account_expense: {  } }
    end

    assert_redirected_to account_expense_url(Account::Expense.last)
  end

  test "should show account_expense" do
    get account_expense_url(@account_expense)
    assert_response :success
  end

  test "should get edit" do
    get edit_account_expense_url(@account_expense)
    assert_response :success
  end

  test "should update account_expense" do
    patch account_expense_url(@account_expense), params: { account_expense: {  } }
    assert_redirected_to account_expense_url(@account_expense)
  end

  test "should destroy account_expense" do
    assert_difference('Account::Expense.count', -1) do
      delete account_expense_url(@account_expense)
    end

    assert_redirected_to account_expenses_url
  end
end
