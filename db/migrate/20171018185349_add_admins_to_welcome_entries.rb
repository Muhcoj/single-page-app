class AddAdminsToWelcomeEntries < ActiveRecord::Migration[5.0]
  def change
    add_reference :welcome_entries, :admin, foreign_key: true
  end
end
