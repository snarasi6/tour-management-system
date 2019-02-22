require 'test_helper'

class ToursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tour = tours(:one)
  end

  test "should get index" do
    get tours_url
    assert_response :success
  end

  test "should get new" do
    get new_tour_url
    assert_response :success
  end

  test "should create tour" do
    assert_difference('Tour.count') do
      post tours_url, params: { tour: {available_seats: @tour.available_seats, user_id: @tour.bookmark_user_id, contact: @tour.contact, deadline: @tour.deadline, description: @tour.description, duration_from: @tour.duration_from, duration_to: @tour.duration_to, itenerary_id: @tour.itenerary_id, name: @tour.name, photo: @tour.photo, price: @tour.price, start_loc: @tour.start_loc, status: @tour.status, total_seats: @tour.total_seats } }
    end

    assert_redirected_to tour_url(Tour.last)
  end

  test "should show tour" do
    get tour_url(@tour)
    assert_response :success
  end

  test "should get edit" do
    get edit_tour_url(@tour)
    assert_response :success
  end

  test "should update tour" do
    patch tour_url(@tour), params: { tour: {available_seats: @tour.available_seats, user_id: @tour.bookmark_user_id, contact: @tour.contact, deadline: @tour.deadline, description: @tour.description, duration_from: @tour.duration_from, duration_to: @tour.duration_to, itenerary_id: @tour.itenerary_id, name: @tour.name, photo: @tour.photo, price: @tour.price, start_loc: @tour.start_loc, status: @tour.status, total_seats: @tour.total_seats } }
    assert_redirected_to tour_url(@tour)
  end

  test "should destroy tour" do
    assert_difference('Tour.count', -1) do
      delete tour_url(@tour)
    end

    assert_redirected_to tours_url
  end
end
