class CreateCourseGrades < ActiveRecord::Migration
	def change
		create_table :course_grades do |t|
			t.float  :earned_credits
			t.float  :gpa_points
			t.string  :grade
			t.integer  :grade_level
			t.float  :percent
			t.float  :potential_credits
			t.belongs_to :school
			t.belongs_to :section
			t.belongs_to :student
			t.boolean :exclude_from_gpa
		end
	end
end
