class AddcolumnEmailtoTeacher < ActiveRecord::Migration
  def change
  	add_column :teachers, :email, :string, :default => ""
  end
end
