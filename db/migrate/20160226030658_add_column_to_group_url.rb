class AddColumnToGroupUrl < ActiveRecord::Migration
  def change
    add_column :groups, :url, :string
  end
end
