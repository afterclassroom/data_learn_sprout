class Course < ActiveRecord::Base
	require 'faker'

	belongs_to :school
	has_many :sections, :dependent => :destroy

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
