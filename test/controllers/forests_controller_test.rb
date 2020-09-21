require 'test_helper'

class ForestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @forest = forests(:one)
  end

  test "should get index" do
    get forests_url
    assert_response :success
  end

  test "should get new" do
    get new_forest_url
    assert_response :success
  end

  test "should create forest" do
    assert_difference('Forest.count') do
      post forests_url, params: { forest: { description: @forest.description } }
    end

    assert_redirected_to forest_url(Forest.last)
  end

  test "should show forest" do
    get forest_url(@forest)
    assert_response :success
  end

  test "should get edit" do
    get edit_forest_url(@forest)
    assert_response :success
  end

  test "should update forest" do
    patch forest_url(@forest), params: { forest: { description: @forest.description } }
    assert_redirected_to forest_url(@forest)
  end

  test "should destroy forest" do
    assert_difference('Forest.count', -1) do
      delete forest_url(@forest)
    end

    assert_redirected_to forests_url
  end
end
