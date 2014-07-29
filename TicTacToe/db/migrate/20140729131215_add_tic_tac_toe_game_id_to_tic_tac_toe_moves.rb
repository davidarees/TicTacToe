class AddTicTacToeGameIdToTicTacToeMoves < ActiveRecord::Migration
  def change
    add_column :tic_tac_toe_moves, :tic_tac_toe_game_id, :integer
  end
end
