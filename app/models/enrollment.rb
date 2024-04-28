class Enrollment < ApplicationRecord
	has_many :grades
	belongs_to :student
    belongs_to :course
end
