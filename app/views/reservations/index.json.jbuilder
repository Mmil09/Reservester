json.array!(@reservations) do |reservation|
  json.extract! reservation, :id, :email, :date, :time, :message, :restaurant_id
  json.url reservation_url(reservation, format: :json)
end
