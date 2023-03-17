require "application_system_test_case"

class FailureModesTest < ApplicationSystemTestCase
  setup do
    @failure_mode = failure_modes(:one)
  end

  test "visiting the index" do
    visit failure_modes_url
    assert_selector "h1", text: "Failure modes"
  end

  test "should create failure mode" do
    visit failure_modes_url
    click_on "New failure mode"

    fill_in "Criticality", with: @failure_mode.criticality
    fill_in "Description", with: @failure_mode.description
    fill_in "Impact to", with: @failure_mode.impact_to
    fill_in "Name", with: @failure_mode.name
    fill_in "Thing", with: @failure_mode.thing_id
    click_on "Create Failure mode"

    assert_text "Failure mode was successfully created"
    click_on "Back"
  end

  test "should update Failure mode" do
    visit failure_mode_url(@failure_mode)
    click_on "Edit this failure mode", match: :first

    fill_in "Criticality", with: @failure_mode.criticality
    fill_in "Description", with: @failure_mode.description
    fill_in "Impact to", with: @failure_mode.impact_to
    fill_in "Name", with: @failure_mode.name
    fill_in "Thing", with: @failure_mode.thing_id
    click_on "Update Failure mode"

    assert_text "Failure mode was successfully updated"
    click_on "Back"
  end

  test "should destroy Failure mode" do
    visit failure_mode_url(@failure_mode)
    click_on "Destroy this failure mode", match: :first

    assert_text "Failure mode was successfully destroyed"
  end
end
