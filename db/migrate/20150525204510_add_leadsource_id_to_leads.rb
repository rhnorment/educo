class AddLeadsourceIdToLeads < ActiveRecord::Migration
  def change
    add_column :leads, :leadsource_id, :integer
  end
end
