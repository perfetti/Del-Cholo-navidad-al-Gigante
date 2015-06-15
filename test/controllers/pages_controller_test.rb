require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get perfiles" do
    get :perfiles
    assert_response :success
  end

  test "should get blog" do
    get :blog
    assert_response :success
  end

  test "should get propuestas" do
    get :propuestas
    assert_response :success
  end

  test "should get donar" do
    get :donar
    assert_response :success
  end

  test "should get recursos" do
    get :recursos
    assert_response :success
  end

end
