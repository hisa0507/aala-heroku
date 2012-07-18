require 'test_helper'

class MainImagesControllerTest < ActionController::TestCase
  setup do
    @main_image = main_images(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:main_images)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create main_image" do
    assert_difference('MainImage.count') do
      post :create, main_image: { main_image: @main_image.main_image, name: @main_image.name }
    end

    assert_redirected_to main_image_path(assigns(:main_image))
  end

  test "should show main_image" do
    get :show, id: @main_image
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @main_image
    assert_response :success
  end

  test "should update main_image" do
    put :update, id: @main_image, main_image: { main_image: @main_image.main_image, name: @main_image.name }
    assert_redirected_to main_image_path(assigns(:main_image))
  end

  test "should destroy main_image" do
    assert_difference('MainImage.count', -1) do
      delete :destroy, id: @main_image
    end

    assert_redirected_to main_images_path
  end
end
