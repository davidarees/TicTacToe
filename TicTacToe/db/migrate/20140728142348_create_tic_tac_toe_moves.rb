class CreateTicTacToeMoves < ActiveRecord::Migration
  def change
    create_table :tic_tac_toe_moves do |t|
      t.integer :tic_tac_toe_game_id
      t.integer :user_id
      t.string :move

      t.timestamps
    end
  end
end
