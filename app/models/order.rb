class Order < ActiveRecord::Base
    validates :name, :record_time, :presence => true
    attr_protected
    belongs_to          :car
    belongs_to          :diler
    belongs_to          :engineer
end
