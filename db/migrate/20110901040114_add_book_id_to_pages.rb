class AddBookIdToPages < ActiveRecord::Migration
  def self.up
    add_column :pages, :book_id, :integer
  end

  def self.down
    remove_column :pages, :book_id
  end
end
