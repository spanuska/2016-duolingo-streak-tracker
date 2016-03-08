class CreateStreaks < ActiveRecord::Migration
  def change
    create_table :streaks do |t|
      t.integer :number_of_days
      t.integer :lang_id

      t.timestamps null: false
    end
  end
end
