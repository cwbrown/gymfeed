class Gymday
  include Mongoid::Document
  field :location, type: String
  field :gym_date, type: Date
  has_many :workouts
end
