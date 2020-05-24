require 'test_helper'

class CourseSelectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @course_selection = course_selections(:one)
  end

  test "should get index" do
    get course_selections_url
    assert_response :success
  end

  test "should get new" do
    get new_course_selection_url
    assert_response :success
  end

  test "should create course_selection" do
    assert_difference('CourseSelection.count') do
      post course_selections_url, params: { course_selection: { open_course_id: @course_selection.open_course_id, score: @course_selection.score, term: @course_selection.term } }
    end

    assert_redirected_to course_selection_url(CourseSelection.last)
  end

  test "should show course_selection" do
    get course_selection_url(@course_selection)
    assert_response :success
  end

  test "should get edit" do
    get edit_course_selection_url(@course_selection)
    assert_response :success
  end

  test "should update course_selection" do
    patch course_selection_url(@course_selection), params: { course_selection: { open_course_id: @course_selection.open_course_id, score: @course_selection.score, term: @course_selection.term } }
    assert_redirected_to course_selection_url(@course_selection)
  end

  test "should destroy course_selection" do
    assert_difference('CourseSelection.count', -1) do
      delete course_selection_url(@course_selection)
    end

    assert_redirected_to course_selections_url
  end
end
