class CreatePeople < ActiveRecord::Migration
  def self.up
    create_table :people do |t|
      t.string :name
      t.string :gender
      t.integer :mother_id
      t.integer :father_id

      t.timestamps
    end
  end

  def self.down
    drop_table :people
  end
end
