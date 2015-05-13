class CreatePeriods < ActiveRecord::Migration
	def change
		create_table :periods do |t|
			t.belongs_to :school
			t.string  :name
			t.string  :number
		end
	end
end
