class CreateSats < ActiveRecord::Migration
  def change
    create_table :sats do |t|

      t.timestamps
    end
  end
end
