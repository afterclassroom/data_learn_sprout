class Term < ActiveRecord::Base
	require 'faker'

	belongs_to :school
	has_many :sections, :dependent => :destroy

	def self.create_term
		Term.create!({
			name:  Faker::Name.name,
			# school_id: rand(1..10),
			school_id: 1,
			start_date: Faker::Date.backward(14),
			end_date: Faker::Date.backward(14)
			})
	end
end
