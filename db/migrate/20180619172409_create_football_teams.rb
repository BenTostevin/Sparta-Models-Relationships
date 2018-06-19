class CreateFootballTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :football_teams do |t|
      t.integer :rank
      t.string :top_scorer

      t.timestamps
    end
  end
end
