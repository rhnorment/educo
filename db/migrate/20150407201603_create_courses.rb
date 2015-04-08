class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :identifier
      t.string :name
      t.text :description
      t.string :term
      t.timestamps
    end
  end
end
