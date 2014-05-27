class CreateJudges < ActiveRecord::Migration
  def change
    create_table :judges do |t|
      t.string :name
      t.integer :decisions_total
      t.decimal :decisions_unan
      t.decimal :decisions_split
      t.decimal :decisions_major
      t.integer :draws
      t.string :event
      t.string :fight

      t.timestamps
    end
  end
end
