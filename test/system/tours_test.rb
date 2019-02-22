require "application_system_test_case"

class ToursTest < ApplicationSystemTestCase
  setup do
    @tour = tours(:one)
  end

  test "visiting the index" do
    visit tours_url
    assert_selector "h1", text: "Tours"
  end

  test "creating a Tour" do
    visit tours_url
    click_on "New Tour"

    fill_in "Available seats", with: @tour.available_seats
    fill_in "Bookmark user", with: @tour.bookmark_user_id
    fill_in "Contact", with: @tour.contact
    fill_in "Deadline", with: @tour.deadline
    fill_in "Description", with: @tour.description
    fill_in "Duration from", with: @tour.duration_from
    fill_in "Duration to", with: @tour.duration_to
    fill_in "Itenerary", with: @tour.itenerary_id
    fill_in "Name", with: @tour.name
    fill_in "Photo", with: @tour.photo
    fill_in "Price", with: @tour.price
    fill_in "Start loc", with: @tour.start_loc
    fill_in "Status", with: @tour.status
    fill_in "Total seats", with: @tour.total_seats
    click_on "Create Tour"

    assert_text "Tour was successfully created"
    click_on "Back"
  end

  test "updating a Tour" do
    visit tours_url
    click_on "Edit", match: :first

    fill_in "Available seats", with: @tour.available_seats
    fill_in "Bookmark user", with: @tour.bookmark_user_id
    fill_in "Contact", with: @tour.contact
    fill_in "Deadline", with: @tour.deadline
    fill_in "Description", with: @tour.description
    fill_in "Duration from", with: @tour.duration_from
    fill_in "Duration to", with: @tour.duration_to
    fill_in "Itenerary", with: @tour.itenerary_id
    fill_in "Name", with: @tour.name
    fill_in "Photo", with: @tour.photo
    fill_in "Price", with: @tour.price
    fill_in "Start loc", with: @tour.start_loc
    fill_in "Status", with: @tour.status
    fill_in "Total seats", with: @tour.total_seats
    click_on "Update Tour"

    assert_text "Tour was successfully updated"
    click_on "Back"
  end

  test "destroying a Tour" do
    visit tours_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tour was successfully destroyed"
  end
end
