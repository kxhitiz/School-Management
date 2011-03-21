class Changes < ActiveRecord::Migration
  def self.up
  	change_table :attendances do |t|
  		t.change :year, :integer
  		t.change :month, :integer
  		t.change :day, :integer
  	end
  end

  def self.down
  end
end
