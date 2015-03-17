class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string  :title, null: false
      t.integer :publish_year, null: false
      t.string  :isbn, null: false
      t.string  :publisher, null: false
      t.text    :description, null: false

      t.timestamps
    end
    add_index :books, :isbn, unique: true
  end
end
