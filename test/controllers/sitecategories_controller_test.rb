require 'test_helper'

class SitecategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sitecategory = sitecategories(:one)
  end

  test "should get index" do
    get sitecategories_url
    assert_response :success
  end

  test "should get new" do
    get new_sitecategory_url
    assert_response :success
  end

  test "should create sitecategory" do
    assert_difference('Sitecategory.count') do
      post sitecategories_url, params: { sitecategory: { name: @sitecategory.name } }
    end

    assert_redirected_to sitecategory_url(Sitecategory.last)
  end

  test "should show sitecategory" do
    get sitecategory_url(@sitecategory)
    assert_response :success
  end

  test "should get edit" do
    get edit_sitecategory_url(@sitecategory)
    assert_response :success
  end

  test "should update sitecategory" do
    patch sitecategory_url(@sitecategory), params: { sitecategory: { name: @sitecategory.name } }
    assert_redirected_to sitecategory_url(@sitecategory)
  end

  test "should destroy sitecategory" do
    assert_difference('Sitecategory.count', -1) do
      delete sitecategory_url(@sitecategory)
    end

    assert_redirected_to sitecategories_url
  end
end
