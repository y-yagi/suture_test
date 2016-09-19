require 'test_helper'

class PointCardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @point_card = point_cards(:one)
  end

  test "should get index" do
    get point_cards_url
    assert_response :success
  end

  test "should get new" do
    get new_point_card_url
    assert_response :success
  end

  test "should create point_card" do
    assert_difference('PointCard.count') do
      post point_cards_url, params: { point_card: { point: @point_card.point, user_id: @point_card.user_id } }
    end

    assert_redirected_to point_card_url(PointCard.last)
  end

  test "should show point_card" do
    get point_card_url(@point_card)
    assert_response :success
  end

  test "should get edit" do
    get edit_point_card_url(@point_card)
    assert_response :success
  end

  test "should update point_card" do
    patch point_card_url(@point_card), params: { point_card: { point: @point_card.point, user_id: @point_card.user_id } }
    assert_redirected_to point_card_url(@point_card)
  end

  test "should destroy point_card" do
    assert_difference('PointCard.count', -1) do
      delete point_card_url(@point_card)
    end

    assert_redirected_to point_cards_url
  end
end
