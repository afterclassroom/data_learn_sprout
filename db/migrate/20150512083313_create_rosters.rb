class CreateRosters < ActiveRecord::Migration
	def change
		create_table :rosters do |t|
			t.belongs_to :section
			t.belongs_to :student
			t.date       :entry_date
			t.date       :exit_date
		end
	end
end
