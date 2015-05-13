class CreateSchools < ActiveRecord::Migration
	def change
		create_table :schools do |t|
			t.string  :name
			t.integer :number
			t.string  :address_street
			t.string  :address_city
			t.string  :address_state
			t.string  :address_zip
			t.string  :phone
		end
	end
end