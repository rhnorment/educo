class ChangeImageFieldInStaff < ActiveRecord::Migration
  def change
    remove_column :staffs, :image_file_name
    add_column    :staffs, :photo, :string
  end
end
