class AddFileToPages < ActiveRecord::Migration
  def self.up
    add_column :pages, :file, :string
  end

  def self.down
    remove_column :pages, :file
  end
end
