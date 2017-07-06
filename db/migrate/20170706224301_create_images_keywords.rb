class CreateImagesKeywords < ActiveRecord::Migration[5.1]
  def change
    create_table :tags do |t|
      t.belongs_to :image, index: true
      t.belongs_to :user, index: true
    end
  end
end
