class Workout
  include Mongoid::Document
  field :name, type: String
  field :program, type: String
  field :description, type: String
  belongs_to :gymday
  has_many :scores
end
