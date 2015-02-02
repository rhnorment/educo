class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.date :date
      t.time :start_time
      t.time :end_time
      t.string :place
      t.string :city
      t.string :state
      t.string :zip_code
      t.timestamps
    end
  end
end
