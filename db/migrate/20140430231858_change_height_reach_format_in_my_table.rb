class ChangeHeightReachFormatInMyTable < ActiveRecord::Migration
  def change
    change_column :fighters, :height, :decimal
    change_column :fighters, :reach, :decimal
  end
end
