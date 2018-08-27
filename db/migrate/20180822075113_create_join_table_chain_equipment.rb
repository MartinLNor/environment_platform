class CreateJoinTableChainEquipment < ActiveRecord::Migration[5.2]
  def change
    create_join_table :chains, :equipment do |t|
      # t.index [:chain_id, :equipment_id]
      # t.index [:equipment_id, :chain_id]
    end
  end
end
