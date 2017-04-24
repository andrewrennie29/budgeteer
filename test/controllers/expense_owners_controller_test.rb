require 'test_helper'

class ExpenseOwnersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @expense_owner = expense_owners(:one)
  end

  test "should get index" do
    get expense_owners_url
    assert_response :success
  end

  test "should get new" do
    get new_expense_owner_url
    assert_response :success
  end

  test "should create expense_owner" do
    assert_difference('ExpenseOwner.count') do
      post expense_owners_url, params: { expense_owner: { allocation: @expense_owner.allocation, name: @expense_owner.name } }
    end

    assert_redirected_to expense_owner_url(ExpenseOwner.last)
  end

  test "should show expense_owner" do
    get expense_owner_url(@expense_owner)
    assert_response :success
  end

  test "should get edit" do
    get edit_expense_owner_url(@expense_owner)
    assert_response :success
  end

  test "should update expense_owner" do
    patch expense_owner_url(@expense_owner), params: { expense_owner: { allocation: @expense_owner.allocation, name: @expense_owner.name } }
    assert_redirected_to expense_owner_url(@expense_owner)
  end

  test "should destroy expense_owner" do
    assert_difference('ExpenseOwner.count', -1) do
      delete expense_owner_url(@expense_owner)
    end

    assert_redirected_to expense_owners_url
  end
end
