require 'test_helper'

class StreaksControllerTest < ActionController::TestCase
  setup do
    @streak = streaks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:streaks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create streak" do
    assert_difference('Streak.count') do
      post :create, streak: { lang_id: @streak.lang_id, number_of_days: @streak.number_of_days }
    end

    assert_redirected_to streak_path(assigns(:streak))
  end

  test "should show streak" do
    get :show, id: @streak
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @streak
    assert_response :success
  end

  test "should update streak" do
    patch :update, id: @streak, streak: { lang_id: @streak.lang_id, number_of_days: @streak.number_of_days }
    assert_redirected_to streak_path(assigns(:streak))
  end

  test "should destroy streak" do
    assert_difference('Streak.count', -1) do
      delete :destroy, id: @streak
    end

    assert_redirected_to streaks_path
  end
end
