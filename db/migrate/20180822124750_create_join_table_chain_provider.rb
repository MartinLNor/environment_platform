class CreateJoinTableChainProvider < ActiveRecord::Migration[5.2]
  def change
    create_join_table :chains, :providers do |t|
      # t.index [:chain_id, :provider_id]
      # t.index [:provider_id, :chain_id]
    end
  end
end
