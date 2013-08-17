require 'test_helper'

class FoodRecordsControllerTest < ActionController::TestCase
  setup do
    @food_record = food_records(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:food_records)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create food_record" do
    assert_difference('FoodRecord.count') do
      post :create, food_record: { name: @food_record.name, points: @food_record.points, weight: @food_record.weight }
    end

    assert_redirected_to food_record_path(assigns(:food_record))
  end

  test "should show food_record" do
    get :show, id: @food_record
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @food_record
    assert_response :success
  end

  test "should update food_record" do
    patch :update, id: @food_record, food_record: { name: @food_record.name, points: @food_record.points, weight: @food_record.weight }
    assert_redirected_to food_record_path(assigns(:food_record))
  end

  test "should destroy food_record" do
    assert_difference('FoodRecord.count', -1) do
      delete :destroy, id: @food_record
    end

    assert_redirected_to food_records_path
  end
end
