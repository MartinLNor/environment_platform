class CreateJoinTableChainUser < ActiveRecord::Migration[5.2]
  def change
    create_join_table :chains, :users do |t|
      # t.index [:chain_id, :user_id]
      # t.index [:user_id, :chain_id]
    end
  end
end
