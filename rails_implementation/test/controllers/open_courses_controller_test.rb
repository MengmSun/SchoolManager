require 'test_helper'

class OpenCoursesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @open_course = open_courses(:one)
  end

  test "should get index" do
    get open_courses_url
    assert_response :success
  end

  test "should get new" do
    get new_open_course_url
    assert_response :success
  end

  test "should create open_course" do
    assert_difference('OpenCourse.count') do
      post open_courses_url, params: { open_course: { course_id: @open_course.course_id, schedule: @open_course.schedule, teacher_id: @open_course.teacher_id, term: @open_course.term } }
    end

    assert_redirected_to open_course_url(OpenCourse.last)
  end

  test "should show open_course" do
    get open_course_url(@open_course)
    assert_response :success
  end

  test "should get edit" do
    get edit_open_course_url(@open_course)
    assert_response :success
  end

  test "should update open_course" do
    patch open_course_url(@open_course), params: { open_course: { course_id: @open_course.course_id, schedule: @open_course.schedule, teacher_id: @open_course.teacher_id, term: @open_course.term } }
    assert_redirected_to open_course_url(@open_course)
  end

  test "should destroy open_course" do
    assert_difference('OpenCourse.count', -1) do
      delete open_course_url(@open_course)
    end

    assert_redirected_to open_courses_url
  end
end
