require 'test_helper'

class TherapyTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @therapy_type = therapy_types(:one)
  end

  test "should get index" do
    get therapy_types_url
    assert_response :success
  end

  test "should get new" do
    get new_therapy_type_url
    assert_response :success
  end

  test "should create therapy_type" do
    assert_difference('TherapyType.count') do
      post therapy_types_url, params: { therapy_type: { name: @therapy_type.name } }
    end

    assert_redirected_to therapy_type_url(TherapyType.last)
  end

  test "should show therapy_type" do
    get therapy_type_url(@therapy_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_therapy_type_url(@therapy_type)
    assert_response :success
  end

  test "should update therapy_type" do
    patch therapy_type_url(@therapy_type), params: { therapy_type: { name: @therapy_type.name } }
    assert_redirected_to therapy_type_url(@therapy_type)
  end

  test "should destroy therapy_type" do
    assert_difference('TherapyType.count', -1) do
      delete therapy_type_url(@therapy_type)
    end

    assert_redirected_to therapy_types_url
  end
end
