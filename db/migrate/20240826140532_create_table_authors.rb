class CreateTableAuthors < ActiveRecord::Migration[7.1]
  def change
    create_table :authors do |t|
      t.string :name, null: false
      t.string :last_name, null: false
      t.date :birth_date, null: false
      t.integer :blood, null: false

      t.timestamps
    end
  end
end
