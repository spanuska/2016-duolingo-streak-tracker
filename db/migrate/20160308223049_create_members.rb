class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :username

      t.timestamps null: false
    end
    add_index :members, :username, unique: true
  end
end
