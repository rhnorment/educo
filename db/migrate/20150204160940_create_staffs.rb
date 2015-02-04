class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.string :name
      t.string :title
      t.string :credentials
      t.text :bio
      t.string :image_file_name
      t.string :category
      t.timestamps
    end
  end
end
