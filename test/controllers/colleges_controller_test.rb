require 'test_helper'

class CollegesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @college = colleges(:one)
  end

  test "should get index" do
    get colleges_url
    assert_response :success
  end

  test "should get new" do
    get new_college_url
    assert_response :success
  end

  test "should create college" do
    assert_difference('College.count') do
      post colleges_url, params: { college: {  } }
    end

    assert_redirected_to college_url(College.last)
  end

  test "should show college" do
    get college_url(@college)
    assert_response :success
  end

  test "should get edit" do
    get edit_college_url(@college)
    assert_response :success
  end

  test "should update college" do
    patch college_url(@college), params: { college: {  } }
    assert_redirected_to college_url(@college)
  end

  test "should destroy college" do
    assert_difference('College.count', -1) do
      delete college_url(@college)
    end

    assert_redirected_to colleges_url
  end
end
