class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  attr_protected
  devise :database_authenticatable, # :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :timeoutable

  include RoleModel
  #roles_attribute :roles_mask
  roles :admin, :manager, :author
  
  has_and_belongs_to_many :dilers
end
