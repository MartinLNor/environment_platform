class CreateActives < ActiveRecord::Migration[5.2]
  def change
    create_table :actives do |t|
      t.references :chain, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
