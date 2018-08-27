class CreateProviders < ActiveRecord::Migration[5.2]
  def change
    create_table :providers do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :fax
      t.string :logo

      t.timestamps
    end
  end
end
