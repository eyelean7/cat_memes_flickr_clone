class CreateTables < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.email :string
      t.timestamps
    end
    create_table :collections do |t|
      t.boolean :fav_img
      t.boolean :tagged
      t.boolean :uploaded
      t.belongs_to :user, index: true
      t.belongs_to :image, index: true
      t.timestamps
    end
    create_table :images do |t|
      t.string :keyword
      t.timestamps
  end
end
