class CreateAttendanceCodes < ActiveRecord::Migration
  def change
    create_table :attendance_codes do |t|

      t.timestamps
    end
  end
end
