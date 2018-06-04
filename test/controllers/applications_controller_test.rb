require 'test_helper'

class ApplicationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @application = applications(:one)
  end

  test "should get index" do
    get applications_url
    assert_response :success
  end

  test "should get new" do
    get new_application_url
    assert_response :success
  end

  test "should create application" do
    assert_difference('Application.count') do
      post applications_url, params: { application: { address: @application.address, college: @application.college, completed: @application.completed, department: @application.department, dob: @application.dob, enrolled: @application.enrolled, express: @application.express, firstname: @application.firstname, lastname: @application.lastname, phone: @application.phone, processed: @application.processed, programme: @application.programme, quantity: @application.quantity, reason: @application.reason, school: @application.school, studentid: @application.studentid, type: @application.type } }
    end

    assert_redirected_to application_url(Application.last)
  end

  test "should show application" do
    get application_url(@application)
    assert_response :success
  end

  test "should get edit" do
    get edit_application_url(@application)
    assert_response :success
  end

  test "should update application" do
    patch application_url(@application), params: { application: { address: @application.address, college: @application.college, completed: @application.completed, department: @application.department, dob: @application.dob, enrolled: @application.enrolled, express: @application.express, firstname: @application.firstname, lastname: @application.lastname, phone: @application.phone, processed: @application.processed, programme: @application.programme, quantity: @application.quantity, reason: @application.reason, school: @application.school, studentid: @application.studentid, type: @application.type } }
    assert_redirected_to application_url(@application)
  end

  test "should destroy application" do
    assert_difference('Application.count', -1) do
      delete application_url(@application)
    end

    assert_redirected_to applications_url
  end
end
