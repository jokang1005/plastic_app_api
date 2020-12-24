require 'test_helper'

class PlasticsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @plastic = plastics(:one)
  end

  test "should get index" do
    get plastics_url, as: :json
    assert_response :success
  end

  test "should create plastic" do
    assert_difference('Plastic.count') do
      post plastics_url, params: { plastic: { coffee_cup: @plastic.coffee_cup, coffee_pod: @plastic.coffee_pod, disposable_diaper: @plastic.disposable_diaper, plastic_bags: @plastic.plastic_bags, plastic_cup: @plastic.plastic_cup, plastic_straw: @plastic.plastic_straw, plastic_toothbrush: @plastic.plastic_toothbrush, plastic_water_bottle: @plastic.plastic_water_bottle, six_pack_plastic_rings: @plastic.six_pack_plastic_rings, user_id: @plastic.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show plastic" do
    get plastic_url(@plastic), as: :json
    assert_response :success
  end

  test "should update plastic" do
    patch plastic_url(@plastic), params: { plastic: { coffee_cup: @plastic.coffee_cup, coffee_pod: @plastic.coffee_pod, disposable_diaper: @plastic.disposable_diaper, plastic_bags: @plastic.plastic_bags, plastic_cup: @plastic.plastic_cup, plastic_straw: @plastic.plastic_straw, plastic_toothbrush: @plastic.plastic_toothbrush, plastic_water_bottle: @plastic.plastic_water_bottle, six_pack_plastic_rings: @plastic.six_pack_plastic_rings, user_id: @plastic.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy plastic" do
    assert_difference('Plastic.count', -1) do
      delete plastic_url(@plastic), as: :json
    end

    assert_response 204
  end
end
