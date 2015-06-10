class CreateGalleryPhotos < ActiveRecord::Migration
  def change
    create_table :gallery_photos do |t|
      t.string :image_file
      t.string :caption
      t.string :category
      t.boolean :active, default: false
      t.timestamps null: false
    end
  end
end
