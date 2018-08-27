class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :chains, :type, :risk
  end
end
