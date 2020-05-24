require "application_system_test_case"

class CourseSelectionsTest < ApplicationSystemTestCase
  setup do
    @course_selection = course_selections(:one)
  end

  test "visiting the index" do
    visit course_selections_url
    assert_selector "h1", text: "Course Selections"
  end

  test "creating a Course selection" do
    visit course_selections_url
    click_on "New Course Selection"

    fill_in "Open course", with: @course_selection.open_course_id
    fill_in "Score", with: @course_selection.score
    fill_in "Term", with: @course_selection.term
    click_on "Create Course selection"

    assert_text "Course selection was successfully created"
    click_on "Back"
  end

  test "updating a Course selection" do
    visit course_selections_url
    click_on "Edit", match: :first

    fill_in "Open course", with: @course_selection.open_course_id
    fill_in "Score", with: @course_selection.score
    fill_in "Term", with: @course_selection.term
    click_on "Update Course selection"

    assert_text "Course selection was successfully updated"
    click_on "Back"
  end

  test "destroying a Course selection" do
    visit course_selections_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Course selection was successfully destroyed"
  end
end
