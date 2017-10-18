class CreateWelcomeEntries < ActiveRecord::Migration[5.0]
  def change
    create_table :welcome_entries do |t|
      t.string :title
      t.text :description
      t.integer :admin_id

      t.timestamps
    end
  end
end
