require 'test_helper'

class TherapyFormatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @therapy_format = therapy_formats(:one)
  end

  test "should get index" do
    get therapy_formats_url
    assert_response :success
  end

  test "should get new" do
    get new_therapy_format_url
    assert_response :success
  end

  test "should create therapy_format" do
    assert_difference('TherapyFormat.count') do
      post therapy_formats_url, params: { therapy_format: { name: @therapy_format.name } }
    end

    assert_redirected_to therapy_format_url(TherapyFormat.last)
  end

  test "should show therapy_format" do
    get therapy_format_url(@therapy_format)
    assert_response :success
  end

  test "should get edit" do
    get edit_therapy_format_url(@therapy_format)
    assert_response :success
  end

  test "should update therapy_format" do
    patch therapy_format_url(@therapy_format), params: { therapy_format: { name: @therapy_format.name } }
    assert_redirected_to therapy_format_url(@therapy_format)
  end

  test "should destroy therapy_format" do
    assert_difference('TherapyFormat.count', -1) do
      delete therapy_format_url(@therapy_format)
    end

    assert_redirected_to therapy_formats_url
  end
end
