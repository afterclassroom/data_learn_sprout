class CreateActs < ActiveRecord::Migration
	def change
		create_table :acts do |t|
			t.belongs_to :student
			t.integer    :english_score
			t.integer    :reading_score
			t.integer    :science_score
			t.integer    :math_score
		end
	end
end
