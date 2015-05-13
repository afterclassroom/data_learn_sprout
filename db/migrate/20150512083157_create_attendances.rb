class CreateAttendances < ActiveRecord::Migration
	def change
		create_table :attendances do |t|
			t.belongs_to :student
			t.belongs_to :school
			t.belongs_to :period
			t.belongs_to :attendance_code
			t.integer    :code_id
			t.belongs_to :section
			t.date       :date
		end
	end
end
