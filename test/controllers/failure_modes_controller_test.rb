require "test_helper"

class FailureModesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @failure_mode = failure_modes(:one)
  end

  test "should get index" do
    get failure_modes_url
    assert_response :success
  end

  test "should get new" do
    get new_failure_mode_url
    assert_response :success
  end

  test "should create failure_mode" do
    assert_difference("FailureMode.count") do
      post failure_modes_url, params: { failure_mode: { criticality: @failure_mode.criticality, description: @failure_mode.description, impact_to: @failure_mode.impact_to, name: @failure_mode.name, thing_id: @failure_mode.thing_id } }
    end

    assert_redirected_to failure_mode_url(FailureMode.last)
  end

  test "should show failure_mode" do
    get failure_mode_url(@failure_mode)
    assert_response :success
  end

  test "should get edit" do
    get edit_failure_mode_url(@failure_mode)
    assert_response :success
  end

  test "should update failure_mode" do
    patch failure_mode_url(@failure_mode), params: { failure_mode: { criticality: @failure_mode.criticality, description: @failure_mode.description, impact_to: @failure_mode.impact_to, name: @failure_mode.name, thing_id: @failure_mode.thing_id } }
    assert_redirected_to failure_mode_url(@failure_mode)
  end

  test "should destroy failure_mode" do
    assert_difference("FailureMode.count", -1) do
      delete failure_mode_url(@failure_mode)
    end

    assert_redirected_to failure_modes_url
  end
end
