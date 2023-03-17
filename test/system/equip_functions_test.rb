require "application_system_test_case"

class EquipFunctionsTest < ApplicationSystemTestCase
  setup do
    @equip_function = equip_functions(:one)
  end

  test "visiting the index" do
    visit equip_functions_url
    assert_selector "h1", text: "Equip functions"
  end

  test "should create equip function" do
    visit equip_functions_url
    click_on "New equip function"

    fill_in "Name", with: @equip_function.name
    fill_in "Thing", with: @equip_function.thing_id
    fill_in "Tracked description", with: @equip_function.tracked_description
    fill_in "Tracked value", with: @equip_function.tracked_value
    click_on "Create Equip function"

    assert_text "Equip function was successfully created"
    click_on "Back"
  end

  test "should update Equip function" do
    visit equip_function_url(@equip_function)
    click_on "Edit this equip function", match: :first

    fill_in "Name", with: @equip_function.name
    fill_in "Thing", with: @equip_function.thing_id
    fill_in "Tracked description", with: @equip_function.tracked_description
    fill_in "Tracked value", with: @equip_function.tracked_value
    click_on "Update Equip function"

    assert_text "Equip function was successfully updated"
    click_on "Back"
  end

  test "should destroy Equip function" do
    visit equip_function_url(@equip_function)
    click_on "Destroy this equip function", match: :first

    assert_text "Equip function was successfully destroyed"
  end
end
