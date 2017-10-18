class RemoveAdminIdFromWelcomeEntries < ActiveRecord::Migration[5.0]
  def change
    remove_column :welcome_entries, :admin_id, :integer
  end
end
