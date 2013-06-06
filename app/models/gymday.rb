class Gymday
  include Mongoid::Document
  field :location, type: String
  field :gym_date, type: Date
  embeds_many :workouts
end
