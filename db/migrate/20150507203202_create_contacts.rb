class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :city
      t.string :state
      t.string :graduation_year
      t.string :source
      t.string :referrer
      t.string :topic
      t.text :message
      t.timestamps
    end
  end
end
