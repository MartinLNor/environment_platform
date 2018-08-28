class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.references :chain, foreign_key: true
      t.references :provider, foreign_key: true

      t.timestamps
    end
  end
end
