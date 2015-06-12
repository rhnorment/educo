class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.string :student_name
      t.string :parent_name
      t.string :student_phone
      t.string :parent_phone
      t.string :student_email
      t.string :parent_email
      t.date :student_dob
      t.date :parent_dob
      t.text :travel_dates
      t.text :travel_times
      t.string :airport
      t.timestamps null: false
    end
  end
end
