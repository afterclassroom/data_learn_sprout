class Course < ActiveRecord::Base
	require 'faker'

	def self.create_course
		Course.create!({
			name:  Faker::Name.name,
			number: Faker::Number.number(3),
			# school_id: rand(1..10),
			school_id: 1,
			units: Faker::Number.number(3)
			})
	end
end
