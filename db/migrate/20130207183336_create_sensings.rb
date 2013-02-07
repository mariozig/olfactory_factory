class CreateSensings < ActiveRecord::Migration
  def change
    create_table :sensings do |t|
      t.integer :adjective_id
      t.integer :thing_id

      t.timestamps
    end
  end
end
