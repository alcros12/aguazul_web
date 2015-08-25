require 'test_helper'

class TradeMarksControllerTest < ActionController::TestCase
  setup do
    @trade_mark = trade_marks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trade_marks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trade_mark" do
    assert_difference('TradeMark.count') do
      post :create, trade_mark: { name: @trade_mark.name }
    end

    assert_redirected_to trade_mark_path(assigns(:trade_mark))
  end

  test "should show trade_mark" do
    get :show, id: @trade_mark
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trade_mark
    assert_response :success
  end

  test "should update trade_mark" do
    patch :update, id: @trade_mark, trade_mark: { name: @trade_mark.name }
    assert_redirected_to trade_mark_path(assigns(:trade_mark))
  end

  test "should destroy trade_mark" do
    assert_difference('TradeMark.count', -1) do
      delete :destroy, id: @trade_mark
    end

    assert_redirected_to trade_marks_path
  end
end
