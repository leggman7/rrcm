require "test_helper"

class EquipFunctionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @equip_function = equip_functions(:one)
  end

  test "should get index" do
    get equip_functions_url
    assert_response :success
  end

  test "should get new" do
    get new_equip_function_url
    assert_response :success
  end

  test "should create equip_function" do
    assert_difference("EquipFunction.count") do
      post equip_functions_url, params: { equip_function: { name: @equip_function.name, thing_id: @equip_function.thing_id, tracked_description: @equip_function.tracked_description, tracked_value: @equip_function.tracked_value } }
    end

    assert_redirected_to equip_function_url(EquipFunction.last)
  end

  test "should show equip_function" do
    get equip_function_url(@equip_function)
    assert_response :success
  end

  test "should get edit" do
    get edit_equip_function_url(@equip_function)
    assert_response :success
  end

  test "should update equip_function" do
    patch equip_function_url(@equip_function), params: { equip_function: { name: @equip_function.name, thing_id: @equip_function.thing_id, tracked_description: @equip_function.tracked_description, tracked_value: @equip_function.tracked_value } }
    assert_redirected_to equip_function_url(@equip_function)
  end

  test "should destroy equip_function" do
    assert_difference("EquipFunction.count", -1) do
      delete equip_function_url(@equip_function)
    end

    assert_redirected_to equip_functions_url
  end
end
