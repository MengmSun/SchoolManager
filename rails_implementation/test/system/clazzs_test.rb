require "application_system_test_case"

class ClazzesTest < ApplicationSystemTestCase
  setup do
    @clazz = clazzes(:one)
  end

  test "visiting the index" do
    visit clazzes_url
    assert_selector "h1", text: "Clazzes"
  end

  test "creating a Clazz" do
    visit clazzes_url
    click_on "New Clazz"

    fill_in "Code", with: @clazz.code
    fill_in "Department", with: @clazz.department_id
    fill_in "Grade", with: @clazz.grade
    fill_in "Name", with: @clazz.name
    fill_in "Supervisor", with: @clazz.teacher_id
    click_on "Create Clazz"

    assert_text "Clazz was successfully created"
    click_on "Back"
  end

  test "updating a Clazz" do
    visit clazzes_url
    click_on "Edit", match: :first

    fill_in "Code", with: @clazz.code
    fill_in "Department", with: @clazz.department_id
    fill_in "Grade", with: @clazz.grade
    fill_in "Name", with: @clazz.name
    fill_in "Supervisor", with: @clazz.teacher_id
    click_on "Update Clazz"

    assert_text "Clazz was successfully updated"
    click_on "Back"
  end

  test "destroying a Clazz" do
    visit clazzes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Clazz was successfully destroyed"
  end
end
