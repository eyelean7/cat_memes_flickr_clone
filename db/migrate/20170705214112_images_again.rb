class ImagesAgain < ActiveRecord::Migration[5.1]
  def change
    def up
      add_attachment :images, :image_file
    end

    def down
      remove_attachment :images, :image_file
    end
  end
end
