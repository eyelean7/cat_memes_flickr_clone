class RemoveUsersAddKeywords < ActiveRecord::Migration[5.1]
  def change
    drop_table :tags
    create_table :tags do |t|
      t.belongs_to :image, index: true
      t.belongs_to :keyword, index: true
    end
  end
end
