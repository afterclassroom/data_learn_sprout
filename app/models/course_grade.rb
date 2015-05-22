class CourseGrade < ActiveRecord::Base
	require 'faker'

	def self.create_course_grade
		CourseGrade.create!({
			earned_credits:  Faker::Number.number(3),
			gpa_points:  Faker::Number.number(3),
			grade:  Faker::Lorem.characters(1),
			grade_level:  Faker::Number.number(3),
			percent:  Faker::Number.number(3),
			potential_credits:  Faker::Number.number(3),
			# school_id: rand(1..10),
			school_id: 1,
			section_id: rand(1..10),
			student_id: rand(1..10),
			exclude_from_gpa: rand(0..1)
			})
	end
end
