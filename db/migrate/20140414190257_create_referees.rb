class CreateReferees < ActiveRecord::Migration
  def change
    create_table :referees do |t|
      t.string :name
      t.integer :fights
      t.time :avg_fight_time
      t.decimal :ko_tko
      t.decimal :submission
      t.decimal :decision

      t.timestamps
    end
  end
end
