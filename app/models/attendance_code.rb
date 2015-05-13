class AttendanceCode < ActiveRecord::Base
	has_many :attendances, :foreign_key => 'code_id'
end
