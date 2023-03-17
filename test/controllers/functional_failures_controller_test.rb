require "test_helper"

class FunctionalFailuresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @functional_failure = functional_failures(:one)
  end

  test "should get index" do
    get functional_failures_url
    assert_response :success
  end

  test "should get new" do
    get new_functional_failure_url
    assert_response :success
  end

  test "should create functional_failure" do
    assert_difference("FunctionalFailure.count") do
      post functional_failures_url, params: { functional_failure: { description: @functional_failure.description, equip_function_id: @functional_failure.equip_function_id } }
    end

    assert_redirected_to functional_failure_url(FunctionalFailure.last)
  end

  test "should show functional_failure" do
    get functional_failure_url(@functional_failure)
    assert_response :success
  end

  test "should get edit" do
    get edit_functional_failure_url(@functional_failure)
    assert_response :success
  end

  test "should update functional_failure" do
    patch functional_failure_url(@functional_failure), params: { functional_failure: { description: @functional_failure.description, equip_function_id: @functional_failure.equip_function_id } }
    assert_redirected_to functional_failure_url(@functional_failure)
  end

  test "should destroy functional_failure" do
    assert_difference("FunctionalFailure.count", -1) do
      delete functional_failure_url(@functional_failure)
    end

    assert_redirected_to functional_failures_url
  end
end
