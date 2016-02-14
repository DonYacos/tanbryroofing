require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get commercial" do
    get :commercial
    assert_response :success
  end

  test "should get residential" do
    get :residential
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

end
