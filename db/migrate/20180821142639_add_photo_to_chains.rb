class AddPhotoToChains < ActiveRecord::Migration[5.2]
  def change
    add_column :chains, :photo, :string
  end
end
