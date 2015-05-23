class Section < ActiveRecord::Base
	require 'faker'

	belongs_to :school
	belongs_to :teacher
	belongs_to :term
	belongs_to :course

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

	def self.to_csv(options = {})
		CSV.generate(options) do |csv|
			#csv << column_names
			csv << ["course_id","course_name","teacher_id","term_name","start_day","end_day"]
			all.each do |s|
				#csv << product.attributes.values_at(*column_names)
				csv << ["#{s.course.id}", "#{s.course.name}", "#{s.teacher.id}", "#{s.term.name}", "#{s.term.start_date}", "#{s.term.end_date}"]
			end
		end
	end
end
