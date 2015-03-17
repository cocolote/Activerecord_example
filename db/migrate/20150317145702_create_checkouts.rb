class CreateCheckouts < ActiveRecord::Migration
  def change
    due_date = Time.now + (60 * 60 * 24 * 14)

    create_table :checkouts do |t|
      t.datetime  :due_date, null: false, default: due_date
      t.string  :reader_name, null: false
      t.datetime :date_returned, null: false
      t.integer :book_id, null: false

      t.timestamps
    end
  end
end
