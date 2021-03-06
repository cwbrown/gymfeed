class Score
  include Mongoid::Document

  field :value, type: BigDecimal
#  field :completed, type: DateTime
  field :training_date, type: Date
  field :training_time, type: String
  field :scaled, type: Boolean
  field :personal_record, type: Boolean
  belongs_to :gymday
  belongs_to :user

  def pr?
    personal_record?
  end

end
