class CreateStudents < ActiveRecord::Migration
	def change
		create_table :students do |t|
			t.string  :first_name
			t.string  :middle_name
			t.string  :last_name
			t.string  :gender
			t.string  :ethnicity
			t.string  :lunch_status
			t.string  :grade
			t.date    :entry_date
			t.date    :exit_date
			t.date    :birthday
			t.string  :phone
			t.belongs_to :school
			t.string  :address_state
			t.string  :address_city
			t.string  :address_street
			t.string  :address_zip
			t.integer :number
		end
	end
end
