class CreateCollections < ActiveRecord::Migration[5.1]
  def change
    create_table :collections do |t|
      t.belongs_to :user, index: true
      t.belongs_to :image, index: true
      t.boolean :uploaded
      t.boolean :favorite
      t.boolean :tagged
      t.timestamps
    end
  end
end
