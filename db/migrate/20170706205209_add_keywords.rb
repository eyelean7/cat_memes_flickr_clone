class AddKeywords < ActiveRecord::Migration[5.1]
  def change
    remove_column :images, :keyword
    add_column :images, :keywords, :string, array: true, default: []
  end
end
