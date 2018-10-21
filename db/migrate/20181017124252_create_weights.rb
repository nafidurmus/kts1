class CreateWeights < ActiveRecord::Migration[5.2]
  def change
    create_table :weights do |t|
      t.date :date
      t.string :gender
      t.float :lenght
      t.float :weight
      t.float :ideal_weight

      t.timestamps
    end
  end
end
