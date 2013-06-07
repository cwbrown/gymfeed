class Gymday
  include Mongoid::Document
  field :location, type: String
  field :gym_date, type: Date
  embeds_one :workout
  has_many :scores
end
