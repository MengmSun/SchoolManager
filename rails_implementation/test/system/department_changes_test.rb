require "application_system_test_case"

class DepartmentChangesTest < ApplicationSystemTestCase
  setup do
    @department_change = department_changes(:one)
  end

  test "visiting the index" do
    visit department_changes_url
    assert_selector "h1", text: "Department Changes"
  end

  test "creating a Department change" do
    visit department_changes_url
    click_on "New Department Change"

    fill_in "Youth league status", with: @department_change.youth_league_status
    click_on "Create Department change"

    assert_text "Department change was successfully created"
    click_on "Back"
  end

  test "updating a Department change" do
    visit department_changes_url
    click_on "Edit", match: :first

    fill_in "Youth league status", with: @department_change.youth_league_status
    click_on "Update Department change"

    assert_text "Department change was successfully updated"
    click_on "Back"
  end

  test "destroying a Department change" do
    visit department_changes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Department change was successfully destroyed"
  end
end
