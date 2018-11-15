require 'test_helper'

class TherapyIntegrationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @therapy_integration = therapy_integrations(:one)
  end

  test "should get index" do
    get therapy_integrations_url
    assert_response :success
  end

  test "should get new" do
    get new_therapy_integration_url
    assert_response :success
  end

  test "should create therapy_integration" do
    assert_difference('TherapyIntegration.count') do
      post therapy_integrations_url, params: { therapy_integration: { name: @therapy_integration.name } }
    end

    assert_redirected_to therapy_integration_url(TherapyIntegration.last)
  end

  test "should show therapy_integration" do
    get therapy_integration_url(@therapy_integration)
    assert_response :success
  end

  test "should get edit" do
    get edit_therapy_integration_url(@therapy_integration)
    assert_response :success
  end

  test "should update therapy_integration" do
    patch therapy_integration_url(@therapy_integration), params: { therapy_integration: { name: @therapy_integration.name } }
    assert_redirected_to therapy_integration_url(@therapy_integration)
  end

  test "should destroy therapy_integration" do
    assert_difference('TherapyIntegration.count', -1) do
      delete therapy_integration_url(@therapy_integration)
    end

    assert_redirected_to therapy_integrations_url
  end
end
