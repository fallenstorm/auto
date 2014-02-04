class Diler < ActiveRecord::Base
    attr_protected
    has_and_belongs_to_many :users
end
