class Engineer < ActiveRecord::Base
    validates :name, :presence => true
    attr_protected
    has_many    :orders
end
