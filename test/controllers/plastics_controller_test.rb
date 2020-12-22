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
      post plastics_url, params: { plastic: { name: @plastic.name, number: @plastic.number } }, as: :json
    end

    assert_response 201
  end

  test "should show plastic" do
    get plastic_url(@plastic), as: :json
    assert_response :success
  end

  test "should update plastic" do
    patch plastic_url(@plastic), params: { plastic: { name: @plastic.name, number: @plastic.number } }, as: :json
    assert_response 200
  end

  test "should destroy plastic" do
    assert_difference('Plastic.count', -1) do
      delete plastic_url(@plastic), as: :json
    end

    assert_response 204
  end
end
