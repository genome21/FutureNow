class CreateDreamplans < ActiveRecord::Migration
  def change
    create_table :dreamplans do |t|
      t.string :clientname
      t.integer :targetamount
      t.integer :totaltimeframe
      t.integer :targetamountperyear

      t.timestamps
    end
  end
end
