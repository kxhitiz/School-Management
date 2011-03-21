class Attendance < ActiveRecord::Base
  validates :student_name, :presence => true
  validates :student_roll, :presence => true, :numericality => true
  validates :present, :presence => true
  validates :year, :numericality =>true
  validates :month, :numericality =>true
  validates :day, :numericality =>true
end
