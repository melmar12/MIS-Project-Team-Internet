require 'test_helper'

class TaggingsControllerTest < ActionController::TestCase
  setup do
    @tagging = taggings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:taggings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tagging" do
    assert_difference('Tagging.count') do
      post :create, tagging: { event_id: @tagging.event_id, tag_id: @tagging.tag_id }
    end

    assert_redirected_to tagging_path(assigns(:tagging))
  end

  test "should show tagging" do
    get :show, id: @tagging
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tagging
    assert_response :success
  end

  test "should update tagging" do
    patch :update, id: @tagging, tagging: { event_id: @tagging.event_id, tag_id: @tagging.tag_id }
    assert_redirected_to tagging_path(assigns(:tagging))
  end

  test "should destroy tagging" do
    assert_difference('Tagging.count', -1) do
      delete :destroy, id: @tagging
    end

    assert_redirected_to taggings_path
  end
end
