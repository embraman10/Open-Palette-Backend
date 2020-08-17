require 'test_helper'

class ColorizersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @colorizer = colorizers(:one)
  end

  test "should get index" do
    get colorizers_url
    assert_response :success
  end

  test "should get new" do
    get new_colorizer_url
    assert_response :success
  end

  test "should create colorizer" do
    assert_difference('Colorizer.count') do
      post colorizers_url, params: { colorizer: { background: @colorizer.background, font: @colorizer.font, font_color: @colorizer.font_color, frame_style: @colorizer.frame_style, slug: @colorizer.slug } }
    end

    assert_redirected_to colorizer_url(Colorizer.last)
  end

  test "should show colorizer" do
    get colorizer_url(@colorizer)
    assert_response :success
  end

  test "should get edit" do
    get edit_colorizer_url(@colorizer)
    assert_response :success
  end

  test "should update colorizer" do
    patch colorizer_url(@colorizer), params: { colorizer: { background: @colorizer.background, font: @colorizer.font, font_color: @colorizer.font_color, frame_style: @colorizer.frame_style, slug: @colorizer.slug } }
    assert_redirected_to colorizer_url(@colorizer)
  end

  test "should destroy colorizer" do
    assert_difference('Colorizer.count', -1) do
      delete colorizer_url(@colorizer)
    end

    assert_redirected_to colorizers_url
  end
end
