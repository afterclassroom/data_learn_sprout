class Section < ActiveRecord::Base
	require 'faker'

	def self.create_section
		Section.create!({
			teacher_id: rand(1..10),
			course_id: rand(1..10),
			term_id: rand(1..10),
			# school_id: rand(1..10),
			school_id: 1,
			room: Faker::Number.number(3)
			})
	end
end
