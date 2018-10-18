require "application_system_test_case"

class WeightsTest < ApplicationSystemTestCase
  setup do
    @weight = weights(:one)
  end

  test "visiting the index" do
    visit weights_url
    assert_selector "h1", text: "Weights"
  end

  test "creating a Weight" do
    visit weights_url
    click_on "New Weight"

    fill_in "Date", with: @weight.date
    fill_in "Gender", with: @weight.gender
    fill_in "Ideal Weight", with: @weight.ideal_weight
    fill_in "Lenght", with: @weight.lenght
    fill_in "Weight", with: @weight.weight
    click_on "Create Weight"

    assert_text "Weight was successfully created"
    click_on "Back"
  end

  test "updating a Weight" do
    visit weights_url
    click_on "Edit", match: :first

    fill_in "Date", with: @weight.date
    fill_in "Gender", with: @weight.gender
    fill_in "Ideal Weight", with: @weight.ideal_weight
    fill_in "Lenght", with: @weight.lenght
    fill_in "Weight", with: @weight.weight
    click_on "Update Weight"

    assert_text "Weight was successfully updated"
    click_on "Back"
  end

  test "destroying a Weight" do
    visit weights_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Weight was successfully destroyed"
  end
end
