class AddcolumnEmailtoStudents < ActiveRecord::Migration
  def change
  	add_column :students, :email, :string, :default => ""
  end
end
