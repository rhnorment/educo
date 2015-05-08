class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.string :name
      t.string :title
      t.text :bio
      t.string :staff_type
      t.string :image_file_name
      t.timestamps
    end
  end
end
