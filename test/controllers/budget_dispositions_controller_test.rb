require 'test_helper'

class BudgetDispositionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @budget_disposition = budget_dispositions(:one)
  end

  test "should get index" do
    get budget_dispositions_url
    assert_response :success
  end

  test "should get new" do
    get new_budget_disposition_url
    assert_response :success
  end

  test "should create budget_disposition" do
    assert_difference('BudgetDisposition.count') do
      post budget_dispositions_url, params: { budget_disposition: { disposition: @budget_disposition.disposition, multiplier: @budget_disposition.multiplier } }
    end

    assert_redirected_to budget_disposition_url(BudgetDisposition.last)
  end

  test "should show budget_disposition" do
    get budget_disposition_url(@budget_disposition)
    assert_response :success
  end

  test "should get edit" do
    get edit_budget_disposition_url(@budget_disposition)
    assert_response :success
  end

  test "should update budget_disposition" do
    patch budget_disposition_url(@budget_disposition), params: { budget_disposition: { disposition: @budget_disposition.disposition, multiplier: @budget_disposition.multiplier } }
    assert_redirected_to budget_disposition_url(@budget_disposition)
  end

  test "should destroy budget_disposition" do
    assert_difference('BudgetDisposition.count', -1) do
      delete budget_disposition_url(@budget_disposition)
    end

    assert_redirected_to budget_dispositions_url
  end
end
