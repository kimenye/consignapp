require 'test_helper'

class InvolvedItemsControllerTest < ActionController::TestCase
  setup do
    @involved_item = involved_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:involved_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create involved_item" do
    assert_difference('InvolvedItem.count') do
      post :create, involved_item: { quantity: @involved_item.quantity, transaction_type: @involved_item.transaction_type }
    end

    assert_redirected_to involved_item_path(assigns(:involved_item))
  end

  test "should show involved_item" do
    get :show, id: @involved_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @involved_item
    assert_response :success
  end

  test "should update involved_item" do
    put :update, id: @involved_item, involved_item: { quantity: @involved_item.quantity, transaction_type: @involved_item.transaction_type }
    assert_redirected_to involved_item_path(assigns(:involved_item))
  end

  test "should destroy involved_item" do
    assert_difference('InvolvedItem.count', -1) do
      delete :destroy, id: @involved_item
    end

    assert_redirected_to involved_items_path
  end
end
