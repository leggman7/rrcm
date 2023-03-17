require "application_system_test_case"

class FunctionalFailuresTest < ApplicationSystemTestCase
  setup do
    @functional_failure = functional_failures(:one)
  end

  test "visiting the index" do
    visit functional_failures_url
    assert_selector "h1", text: "Functional failures"
  end

  test "should create functional failure" do
    visit functional_failures_url
    click_on "New functional failure"

    fill_in "Description", with: @functional_failure.description
    fill_in "Equip function", with: @functional_failure.equip_function_id
    click_on "Create Functional failure"

    assert_text "Functional failure was successfully created"
    click_on "Back"
  end

  test "should update Functional failure" do
    visit functional_failure_url(@functional_failure)
    click_on "Edit this functional failure", match: :first

    fill_in "Description", with: @functional_failure.description
    fill_in "Equip function", with: @functional_failure.equip_function_id
    click_on "Update Functional failure"

    assert_text "Functional failure was successfully updated"
    click_on "Back"
  end

  test "should destroy Functional failure" do
    visit functional_failure_url(@functional_failure)
    click_on "Destroy this functional failure", match: :first

    assert_text "Functional failure was successfully destroyed"
  end
end
