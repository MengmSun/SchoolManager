require "application_system_test_case"

class StatusChangesTest < ApplicationSystemTestCase
  setup do
    @status_change = status_changes(:one)
  end

  test "visiting the index" do
    visit status_changes_url
    assert_selector "h1", text: "Status Changes"
  end

  test "creating a Status change" do
    visit status_changes_url
    click_on "New Status Change"

    fill_in "Code", with: @status_change.code
    fill_in "Happened at", with: @status_change.happened_at
    fill_in "New clazz code", with: @status_change.new_clazz_code
    fill_in "Original clazz code", with: @status_change.original_clazz_code
    fill_in "Type", with: @status_change.type
    click_on "Create Status change"

    assert_text "Status change was successfully created"
    click_on "Back"
  end

  test "updating a Status change" do
    visit status_changes_url
    click_on "Edit", match: :first

    fill_in "Code", with: @status_change.code
    fill_in "Happened at", with: @status_change.happened_at
    fill_in "New clazz code", with: @status_change.new_clazz_code
    fill_in "Original clazz code", with: @status_change.original_clazz_code
    fill_in "Type", with: @status_change.type
    click_on "Update Status change"

    assert_text "Status change was successfully updated"
    click_on "Back"
  end

  test "destroying a Status change" do
    visit status_changes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Status change was successfully destroyed"
  end
end
