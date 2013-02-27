class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :home_team
      t.string :away_team
      t.string :league
      t.date :date
      t.time :time
      t.string :attended

      t.timestamps
    end
  end
end
