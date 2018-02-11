require 'test_helper'

class ProfessionalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @professional = professionals(:one)
  end

  test "should get index" do
    get professionals_url
    assert_response :success
  end

  test "should get new" do
    get new_professional_url
    assert_response :success
  end

  test "should create professional" do
    assert_difference('Professional.count') do
      post professionals_url, params: { professional: { about: @professional.about, first_name: @professional.first_name, gender: @professional.gender, last_name: @professional.last_name, skype: @professional.skype, user_id: @professional.user_id, whatsapp: @professional.whatsapp } }
    end

    assert_redirected_to professional_url(Professional.last)
  end

  test "should show professional" do
    get professional_url(@professional)
    assert_response :success
  end

  test "should get edit" do
    get edit_professional_url(@professional)
    assert_response :success
  end

  test "should update professional" do
    patch professional_url(@professional), params: { professional: { about: @professional.about, first_name: @professional.first_name, gender: @professional.gender, last_name: @professional.last_name, skype: @professional.skype, user_id: @professional.user_id, whatsapp: @professional.whatsapp } }
    assert_redirected_to professional_url(@professional)
  end

  test "should destroy professional" do
    assert_difference('Professional.count', -1) do
      delete professional_url(@professional)
    end

    assert_redirected_to professionals_url
  end
end
