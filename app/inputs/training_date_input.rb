class TrainingDateInput < SimpleForm::Inputs::Base

#class DatepickerInput < SimpleForm::Inputs::Base
  def input
    @builder.text_field(attribute_name, input_html_options) + \
    @builder.hidden_field(attribute_name, { :class => attribute_name.to_s + "-alt"}) 
  end
end

#  def input_type
#    'date'
#  end

#  def input_options
#    super.tap do |options|
#      options[:include_blank] = true
#      options[:order]         = [:day, :month, :year]
#      options[:start_year]    = Time.now.year - 100
#      options[:end_year]      = Time.now.year - 18
#    end
#  end
#end