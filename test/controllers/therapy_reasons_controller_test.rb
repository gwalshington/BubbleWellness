require 'test_helper'

class TherapyReasonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @therapy_reason = therapy_reasons(:one)
  end

  test "should get index" do
    get therapy_reasons_url
    assert_response :success
  end

  test "should get new" do
    get new_therapy_reason_url
    assert_response :success
  end

  test "should create therapy_reason" do
    assert_difference('TherapyReason.count') do
      post therapy_reasons_url, params: { therapy_reason: { name: @therapy_reason.name } }
    end

    assert_redirected_to therapy_reason_url(TherapyReason.last)
  end

  test "should show therapy_reason" do
    get therapy_reason_url(@therapy_reason)
    assert_response :success
  end

  test "should get edit" do
    get edit_therapy_reason_url(@therapy_reason)
    assert_response :success
  end

  test "should update therapy_reason" do
    patch therapy_reason_url(@therapy_reason), params: { therapy_reason: { name: @therapy_reason.name } }
    assert_redirected_to therapy_reason_url(@therapy_reason)
  end

  test "should destroy therapy_reason" do
    assert_difference('TherapyReason.count', -1) do
      delete therapy_reason_url(@therapy_reason)
    end

    assert_redirected_to therapy_reasons_url
  end
end
