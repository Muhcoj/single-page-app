class AddAdminsToGalleries < ActiveRecord::Migration[5.0]
  def change
    add_reference :galleries, :admin, foreign_key: true
  end
end
