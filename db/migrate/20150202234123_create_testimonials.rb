class CreateTestimonials < ActiveRecord::Migration
  def change
    create_table :testimonials do |t|
      t.string :name
      t.string :location
      t.text :description
      t.string :image_file_name
      t.timestamps
    end
  end
end
