require "application_system_test_case"

class ColorizersTest < ApplicationSystemTestCase
  setup do
    @colorizer = colorizers(:one)
  end

  test "visiting the index" do
    visit colorizers_url
    assert_selector "h1", text: "Colorizers"
  end

  test "creating a Colorizer" do
    visit colorizers_url
    click_on "New Colorizer"

    fill_in "Background", with: @colorizer.background
    fill_in "Font", with: @colorizer.font
    fill_in "Font color", with: @colorizer.font_color
    fill_in "Frame style", with: @colorizer.frame_style
    fill_in "Slug", with: @colorizer.slug
    click_on "Create Colorizer"

    assert_text "Colorizer was successfully created"
    click_on "Back"
  end

  test "updating a Colorizer" do
    visit colorizers_url
    click_on "Edit", match: :first

    fill_in "Background", with: @colorizer.background
    fill_in "Font", with: @colorizer.font
    fill_in "Font color", with: @colorizer.font_color
    fill_in "Frame style", with: @colorizer.frame_style
    fill_in "Slug", with: @colorizer.slug
    click_on "Update Colorizer"

    assert_text "Colorizer was successfully updated"
    click_on "Back"
  end

  test "destroying a Colorizer" do
    visit colorizers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Colorizer was successfully destroyed"
  end
end
