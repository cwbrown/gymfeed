class Score
  include Mongoid::Document
  field :value, type: BigDecimal
end
