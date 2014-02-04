class Car < ActiveRecord::Base
    attr_protected
    belongs_to          :client
    has_many            :orders
end
