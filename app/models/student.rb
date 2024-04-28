class Student < ApplicationRecord
	has_many :enrollments
	has_many :courses, through: :enrollments
	has_many :grades, through: :enrollments

	def average_grade
	  sum = 0
	  self.grades.each do |grade|
	    sum += grade.score
	  end
	  return Float(sum)/self.grades.size
	end
	
end
