class CreateEnrollments < ActiveRecord::Migration
	def change
		create_table :enrollments do |t|
			t.belongs_to :student
			t.belongs_to :school
			t.date    :entry_date
			t.date    :exit_date
			t.integer :grade_level
		end
	end
end
