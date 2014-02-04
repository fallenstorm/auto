class Order < ActiveRecord::Base
    attr_protected
    belongs_to          :car
    belongs_to          :diler
    belongs_to          :engineer
end
