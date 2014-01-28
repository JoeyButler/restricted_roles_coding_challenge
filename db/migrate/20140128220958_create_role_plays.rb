class CreateRolePlays < ActiveRecord::Migration
  def change
    create_table :role_plays do |t|
      t.integer :person_id
      t.integer :role_id

      t.timestamps
    end
  end
end
