class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :slug
      t.text :summary
      t.text :description
      t.date :date
      t.string :time
      t.string :venue
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :speaker
      t.string :title
      t.text :bio
      t.string :photo
      t.timestamps
    end
  end
end
