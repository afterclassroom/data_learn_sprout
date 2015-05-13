class CreateSections < ActiveRecord::Migration
	def change
		create_table :sections do |t|
			t.belongs_to :teacher
			t.belongs_to :school
			t.belongs_to :course
			t.belongs_to :term
			t.string     :room
		end
	end
end
