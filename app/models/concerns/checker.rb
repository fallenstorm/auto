module Checker
  extend ActiveSupport::Concern
  def clean_strings
    self.class.content_columns.each do |field| 
      self.send("#{field.name}=", nil) if field.type == :string
    end                                              
  end
end