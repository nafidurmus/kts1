class RemoveIdealWeightFromWeights < ActiveRecord::Migration[5.2]
  def change
    remove_column :weights, :ideal_weight, :decimal
  end
end
