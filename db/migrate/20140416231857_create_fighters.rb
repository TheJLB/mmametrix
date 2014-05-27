class CreateFighters < ActiveRecord::Migration
  def change
    create_table :fighters do |t|
      t.string :name
      t.string :nickname
      t.integer :win
      t.integer :loss
      t.integer :draw
      t.integer :nc
      t.decimal :height
      t.integer :weight
      t.decimal :reach
      t.string :stance
      t.integer :age
      t.decimal :slpm
      t.decimal :stracc
      t.decimal :sapm
      t.decimal :strdef
      t.decimal :tdavg
      t.decimal :tdacc
      t.decimal :tddef
      t.decimal :subavg

      t.timestamps
    end
  end
end
