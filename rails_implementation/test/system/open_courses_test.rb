require "application_system_test_case"

class OpenCoursesTest < ApplicationSystemTestCase
  setup do
    @open_course = open_courses(:one)
  end

  test "visiting the index" do
    visit open_courses_url
    assert_selector "h1", text: "Open Courses"
  end

  test "creating a Open course" do
    visit open_courses_url
    click_on "New Open Course"

    fill_in "Course", with: @open_course.course_id
    fill_in "Schedule", with: @open_course.schedule
    fill_in "Teacher", with: @open_course.teacher_id
    fill_in "Term", with: @open_course.term
    click_on "Create Open course"

    assert_text "Open course was successfully created"
    click_on "Back"
  end

  test "updating a Open course" do
    visit open_courses_url
    click_on "Edit", match: :first

    fill_in "Course", with: @open_course.course_id
    fill_in "Schedule", with: @open_course.schedule
    fill_in "Teacher", with: @open_course.teacher_id
    fill_in "Term", with: @open_course.term
    click_on "Update Open course"

    assert_text "Open course was successfully updated"
    click_on "Back"
  end

  test "destroying a Open course" do
    visit open_courses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Open course was successfully destroyed"
  end
end
