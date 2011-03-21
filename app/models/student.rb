class Student < ActiveRecord::Base
  validates :name, :presence => true
  validates :roll, :presence => true, :numericality => true, :uniqueness => true
  validates :address, :presence => true
  validates :phone, :presence => true, :numericality => true
end
