class CreateRelationships < ActiveRecord::Migration
  def self.up
    create_table :relationships do |t|
      t.integer :person_id
      t.integer :other_id
      t.string :status

      t.timestamps
    end
  end

  def self.down
    drop_table :relationships
  end
end
