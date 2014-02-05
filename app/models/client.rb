class Client < ActiveRecord::Base
    validates :name, :presence => true
    attr_protected
    has_many    :cars
end
