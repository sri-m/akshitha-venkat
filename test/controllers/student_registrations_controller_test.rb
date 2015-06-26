require 'test_helper'

class StudentRegistrationsControllerTest < ActionController::TestCase
  setup do
    @student_registration = student_registrations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:student_registrations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student_registration" do
    assert_difference('StudentRegistration.count') do
      post :create, student_registration: { age: @student_registration.age, cell: @student_registration.cell, education: @student_registration.education, email: @student_registration.email, gender: @student_registration.gender, group: @student_registration.group, name: @student_registration.name, subject: @student_registration.subject }
    end

    assert_redirected_to student_registration_path(assigns(:student_registration))
  end

  test "should show student_registration" do
    get :show, id: @student_registration
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @student_registration
    assert_response :success
  end

  test "should update student_registration" do
    patch :update, id: @student_registration, student_registration: { age: @student_registration.age, cell: @student_registration.cell, education: @student_registration.education, email: @student_registration.email, gender: @student_registration.gender, group: @student_registration.group, name: @student_registration.name, subject: @student_registration.subject }
    assert_redirected_to student_registration_path(assigns(:student_registration))
  end

  test "should destroy student_registration" do
    assert_difference('StudentRegistration.count', -1) do
      delete :destroy, id: @student_registration
    end

    assert_redirected_to student_registrations_path
  end
end
