class Workout
  include Mongoid::Document
  field :name, type: String
  field :program, type: String
  field :description, type: String
  embedded_in :gymday
  embeds_many :scores
end
