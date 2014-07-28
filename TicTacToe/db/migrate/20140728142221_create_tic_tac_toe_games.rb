class CreateTicTacToeGames < ActiveRecord::Migration
  def change
    create_table :tic_tac_toe_games do |t|
      t.integer :player1_id
      t.integer :player2_id
      t.integer :number_of_games_won_by_player1
      t.integer :number_of_games_won_by_player2
      t.integer :number_of_games_drawn

      t.timestamps
    end
  end
end
