class Gymday
  include Mongoid::Document
  field :_id, type: String, default: -> { gym_date.to_s.parameterize }
  field :location, type: String
  field :gym_date, type: Date
  embeds_one :workout
  has_many :scores

end
