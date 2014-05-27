class ChangeHeightWeightFormatInTable < ActiveRecord::Migration
  def change_ht
    change_column :fighters, :height, :decimal
  end

  def change_rch
    change_column :fighters, :reach, :decimal
  end
end