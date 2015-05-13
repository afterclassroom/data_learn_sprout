class CreateAttendanceCodes < ActiveRecord::Migration
	def change
		create_table :attendance_codes do |t|
			t.string  :name
			t.string  :description
			t.boolean :present
			t.belongs_to :school
		end
	end
end
