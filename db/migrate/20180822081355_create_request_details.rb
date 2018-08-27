class CreateRequestDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :request_details do |t|
      t.references :request, foreign_key: true
      t.references :chain, foreign_key: true
      t.references :equipment, foreign_key: true
      t.integer :quantity
      t.string :request_contact
      t.date :wish_date

      t.timestamps
    end
  end
end
