class CreateKeywords < ActiveRecord::Migration[5.1]
  def change
    remove_column :images, :keywords
    create_table :keywords do |t|
      t.string :keyword
    end
  end
end
