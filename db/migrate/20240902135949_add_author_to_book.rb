class AddAuthorToBook < ActiveRecord::Migration[7.1]
  def change
    change_table :books do |t|
      t.belongs_to :author, foreign_key: true
    end
  end
end
