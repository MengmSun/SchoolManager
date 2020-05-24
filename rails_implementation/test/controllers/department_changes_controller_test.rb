require 'test_helper'

class DepartmentChangesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @department_change = department_changes(:one)
  end

  test "should get index" do
    get department_changes_url
    assert_response :success
  end

  test "should get new" do
    get new_department_change_url
    assert_response :success
  end

  test "should create department_change" do
    assert_difference('DepartmentChange.count') do
      post department_changes_url, params: { department_change: { youth_league_status: @department_change.youth_league_status } }
    end

    assert_redirected_to department_change_url(DepartmentChange.last)
  end

  test "should show department_change" do
    get department_change_url(@department_change)
    assert_response :success
  end

  test "should get edit" do
    get edit_department_change_url(@department_change)
    assert_response :success
  end

  test "should update department_change" do
    patch department_change_url(@department_change), params: { department_change: { youth_league_status: @department_change.youth_league_status } }
    assert_redirected_to department_change_url(@department_change)
  end

  test "should destroy department_change" do
    assert_difference('DepartmentChange.count', -1) do
      delete department_change_url(@department_change)
    end

    assert_redirected_to department_changes_url
  end
end
