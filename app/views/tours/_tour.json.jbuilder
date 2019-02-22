json.extract! tour, :id, :name, :description, :photo, :deadline, :price, :duration_from, :duration_to, :start_loc, :itenerary_id, :contact, :user_id, :total_seats, :available_seats, :status, :created_at, :updated_at
json.url tour_url(tour, format: :json)
