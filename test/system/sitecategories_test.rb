require "application_system_test_case"

class SitecategoriesTest < ApplicationSystemTestCase
  setup do
    @sitecategory = sitecategories(:one)
  end

  test "visiting the index" do
    visit sitecategories_url
    assert_selector "h1", text: "Sitecategories"
  end

  test "creating a Sitecategory" do
    visit sitecategories_url
    click_on "New Sitecategory"

    fill_in "Name", with: @sitecategory.name
    click_on "Create Sitecategory"

    assert_text "Sitecategory was successfully created"
    click_on "Back"
  end

  test "updating a Sitecategory" do
    visit sitecategories_url
    click_on "Edit", match: :first

    fill_in "Name", with: @sitecategory.name
    click_on "Update Sitecategory"

    assert_text "Sitecategory was successfully updated"
    click_on "Back"
  end

  test "destroying a Sitecategory" do
    visit sitecategories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sitecategory was successfully destroyed"
  end
end
