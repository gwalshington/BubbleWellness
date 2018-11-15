require 'test_helper'

class TherapyBudgetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @therapy_budget = therapy_budgets(:one)
  end

  test "should get index" do
    get therapy_budgets_url
    assert_response :success
  end

  test "should get new" do
    get new_therapy_budget_url
    assert_response :success
  end

  test "should create therapy_budget" do
    assert_difference('TherapyBudget.count') do
      post therapy_budgets_url, params: { therapy_budget: { price: @therapy_budget.price } }
    end

    assert_redirected_to therapy_budget_url(TherapyBudget.last)
  end

  test "should show therapy_budget" do
    get therapy_budget_url(@therapy_budget)
    assert_response :success
  end

  test "should get edit" do
    get edit_therapy_budget_url(@therapy_budget)
    assert_response :success
  end

  test "should update therapy_budget" do
    patch therapy_budget_url(@therapy_budget), params: { therapy_budget: { price: @therapy_budget.price } }
    assert_redirected_to therapy_budget_url(@therapy_budget)
  end

  test "should destroy therapy_budget" do
    assert_difference('TherapyBudget.count', -1) do
      delete therapy_budget_url(@therapy_budget)
    end

    assert_redirected_to therapy_budgets_url
  end
end
