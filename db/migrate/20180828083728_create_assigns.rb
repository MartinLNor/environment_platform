class CreateAssigns < ActiveRecord::Migration[5.2]
  def change
    create_table :assigns do |t|
      t.references :chain, foreign_key: true
      t.references :equipment, foreign_key: true

      t.timestamps
    end
  end
end
