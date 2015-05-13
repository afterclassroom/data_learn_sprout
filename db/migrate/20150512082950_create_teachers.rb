class CreateTeachers < ActiveRecord::Migration
	def change
		create_table :teachers do |t|
			t.string  :first_name
			t.string  :middle_name
			t.string  :last_name
			t.belongs_to :school
			t.string  :address_state
			t.string  :address_city
			t.string  :address_street
			t.string  :address_zip
			t.integer :number
		end
	end
end
