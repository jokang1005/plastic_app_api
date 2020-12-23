require 'test_helper'

class NumbersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @number = numbers(:one)
  end

  test "should get index" do
    get numbers_url, as: :json
    assert_response :success
  end

  test "should create number" do
    assert_difference('Number.count') do
      post numbers_url, params: { number: { 6-pack-plastic-rings: @number.6-pack-plastic-rings, coffee-cup: @number.coffee-cup, coffee-pod: @number.coffee-pod, disposable-diaper: @number.disposable-diaper, plastic-bags: @number.plastic-bags, plastic-cup: @number.plastic-cup, plastic-straw: @number.plastic-straw, plastic-toothbrush: @number.plastic-toothbrush, plastic-water-bottle: @number.plastic-water-bottle } }, as: :json
    end

    assert_response 201
  end

  test "should show number" do
    get number_url(@number), as: :json
    assert_response :success
  end

  test "should update number" do
    patch number_url(@number), params: { number: { 6-pack-plastic-rings: @number.6-pack-plastic-rings, coffee-cup: @number.coffee-cup, coffee-pod: @number.coffee-pod, disposable-diaper: @number.disposable-diaper, plastic-bags: @number.plastic-bags, plastic-cup: @number.plastic-cup, plastic-straw: @number.plastic-straw, plastic-toothbrush: @number.plastic-toothbrush, plastic-water-bottle: @number.plastic-water-bottle } }, as: :json
    assert_response 200
  end

  test "should destroy number" do
    assert_difference('Number.count', -1) do
      delete number_url(@number), as: :json
    end

    assert_response 204
  end
end
