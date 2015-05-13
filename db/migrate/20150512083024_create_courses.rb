class CreateCourses < ActiveRecord::Migration
	def change
		create_table :courses do |t|
			t.integer :number
			t.string  :name
			t.belongs_to :school
			t.float  :units
		end
	end
end
