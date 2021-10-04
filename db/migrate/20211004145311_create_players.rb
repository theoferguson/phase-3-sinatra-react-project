class CreatePlayers < ActiveRecord::Migration[6.1]
  def change
    create_table :players do |t|
      t.string  :name
      t.integer :team_id
      t.integer :position_id
    end
  end
end
