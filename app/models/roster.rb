class Roster < ActiveRecord::Base
	require 'faker'

	belongs_to :student
	belongs_to :section

	def self.create_roster
		Roster.create!({
			section_id: rand(1..10),
			student_id: rand(1..10),
			entry_date: Faker::Date.backward(14),
			exit_date: Faker::Date.backward(14)
			})
	end

	def self.to_csv(options = {})
		CSV.generate(options) do |csv|
			#csv << column_names
			csv << ["student_id","course_id","entry_date","exit_date"]
			all.each do |s|
				#csv << product.attributes.values_at(*column_names)
				csv << ["#{s.student_id}", "#{s.section.course_id}", "#{s.entry_date}", "#{s.exit_date}"]
			end
		end
	end

end
