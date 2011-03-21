class CreateAttendances < ActiveRecord::Migration
  def self.up
    create_table :attendances do |t|
      t.string :student_name
      t.integer :student_roll
      t.boolean :present
      t.integer :year
      t.integer :month
      t.integer :day

      t.timestamps
    end
  end

  def self.down
    drop_table :attendances
  end
end
