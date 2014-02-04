class Engineer < ActiveRecord::Base
    attr_protected
    has_many    :orders
end
