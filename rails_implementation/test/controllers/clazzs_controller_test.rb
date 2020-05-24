require 'test_helper'

class ClazzesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @clazz = clazzes(:one)
  end

  test "should get index" do
    get clazzes_url
    assert_response :success
  end

  test "should get new" do
    get new_clazz_url
    assert_response :success
  end

  test "should create clazz" do
    assert_difference('Clazz.count') do
      post clazzes_url, params: { clazz: { code: @clazz.code, department_id: @clazz.department_id, grade: @clazz.grade, name: @clazz.name, teacher_id: @clazz.teacher_id } }
    end

    assert_redirected_to clazz_url(Clazz.last)
  end

  test "should show clazz" do
    get clazz_url(@clazz)
    assert_response :success
  end

  test "should get edit" do
    get edit_clazz_url(@clazz)
    assert_response :success
  end

  test "should update clazz" do
    patch clazz_url(@clazz), params: { clazz: { code: @clazz.code, department_id: @clazz.department_id, grade: @clazz.grade, name: @clazz.name, teacher_id: @clazz.teacher_id } }
    assert_redirected_to clazz_url(@clazz)
  end

  test "should destroy clazz" do
    assert_difference('Clazz.count', -1) do
      delete clazz_url(@clazz)
    end

    assert_redirected_to clazzes_url
  end
end
