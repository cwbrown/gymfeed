class Score
  include Mongoid::Document
  field :value, type: BigDecimal
  field :completed, type: DateTime
  field :scaled, type: Boolean
  field :personal_record, type: Boolean
  belongs_to :gymday
  belongs_to :user
end
