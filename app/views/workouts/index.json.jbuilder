json.array!(@workouts) do |workout|
  json.extract! workout, :name, :program, :description
  json.url workout_url(workout, format: :json)
end