class CreateBooksTable < ActiveRecord::Migration[7.1]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :year_of_publication

      t.timestamps
    end
  end
end
