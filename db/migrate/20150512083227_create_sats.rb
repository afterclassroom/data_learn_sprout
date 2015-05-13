class CreateSats < ActiveRecord::Migration
	def change
		create_table :sats do |t|
			t.integer    :math_score
			t.integer    :verbal_score
			t.integer    :writing_score
			t.belongs_to :student
		end
	end
end
