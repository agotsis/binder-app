class AddStatusTypesToOrganizationStatusType < ActiveRecord::Migration
  def change
    add_column :organization_status_types, :is_build, :boolean
    add_column :organization_status_types, :is_electrical, :boolean
  end
end
