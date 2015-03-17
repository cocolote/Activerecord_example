class AddAuthorToBooks < ActiveRecord::Migration
  def change
    add_column :books, :author, :string
  end

  # def down
  #   remove_column :books, :author
  # end
end
