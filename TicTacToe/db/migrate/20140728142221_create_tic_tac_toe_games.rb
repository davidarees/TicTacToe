class CreateTicTacToeGames < ActiveRecord::Migration
  def change
    create_table :tic_tac_toe_games do |t|
      t.integer :player1_id
      t.integer :player2_id
      t.boolean :game_complete, :default => false 
      t.integer :winner_id

      t.timestamps
    end
  end
end
