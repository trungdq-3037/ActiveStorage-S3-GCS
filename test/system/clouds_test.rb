require "application_system_test_case"

class CloudsTest < ApplicationSystemTestCase
  setup do
    @cloud = clouds(:one)
  end

  test "visiting the index" do
    visit clouds_url
    assert_selector "h1", text: "Clouds"
  end

  test "should create cloud" do
    visit clouds_url
    click_on "New cloud"

    click_on "Create Cloud"

    assert_text "Cloud was successfully created"
    click_on "Back"
  end

  test "should update Cloud" do
    visit cloud_url(@cloud)
    click_on "Edit this cloud", match: :first

    click_on "Update Cloud"

    assert_text "Cloud was successfully updated"
    click_on "Back"
  end

  test "should destroy Cloud" do
    visit cloud_url(@cloud)
    click_on "Destroy this cloud", match: :first

    assert_text "Cloud was successfully destroyed"
  end
end
