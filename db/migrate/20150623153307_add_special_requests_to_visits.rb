class AddSpecialRequestsToVisits < ActiveRecord::Migration
  def change
    add_column :visits, :special_requests, :text
  end
end
