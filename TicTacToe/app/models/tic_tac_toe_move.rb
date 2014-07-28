class TicTacToeMove < ActiveRecord::Base
  attr_accessible :game_id, :move, :user_id
  belongs_to :tic_tac_toe_game
  belongs_to :user
end
