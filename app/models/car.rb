class Car < ActiveRecord::Base
    #include Checker
    #before_validation :clean_strings
    validates :name, :presence => true
    attr_protected
    belongs_to          :client
    has_many            :orders
    
end
