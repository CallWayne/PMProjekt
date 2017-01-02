require 'test_helper'

class EffortCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @effort_category = effort_categories(:one)
  end

  test "should get index" do
    get effort_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_effort_category_url
    assert_response :success
  end

  test "should create effort_category" do
    assert_difference('EffortCategory.count') do
      post effort_categories_url, params: { effort_category: { description: @effort_category.description, value: @effort_category.value } }
    end

    assert_redirected_to effort_category_url(EffortCategory.last)
  end

  test "should show effort_category" do
    get effort_category_url(@effort_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_effort_category_url(@effort_category)
    assert_response :success
  end

  test "should update effort_category" do
    patch effort_category_url(@effort_category), params: { effort_category: { description: @effort_category.description, value: @effort_category.value } }
    assert_redirected_to effort_category_url(@effort_category)
  end

  test "should destroy effort_category" do
    assert_difference('EffortCategory.count', -1) do
      delete effort_category_url(@effort_category)
    end

    assert_redirected_to effort_categories_url
  end
end
