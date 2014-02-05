class Diler < ActiveRecord::Base
    validates :name, :presence => true
    attr_protected
    has_and_belongs_to_many     :users
    has_many                    :orders
end
