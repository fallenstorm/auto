class Client < ActiveRecord::Base
    attr_protected
    has_many    :cars
end
