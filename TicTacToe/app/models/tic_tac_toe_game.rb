class TicTacToeGame < ActiveRecord::Base
  attr_accessible :number_of_games_drawn, :number_of_games_won_by_player1, :number_of_games_won_by_player2, :player1_id, :player2_id

  belongs_to :player1, :class_name => "User"
  belongs_to :player2, :class_name => "User"
  has_many :tic_tac_toe_moves

  def self.change_user
      if @current_player = @game.player2.username
        @current_player = @game.player1.username
      else
        @current_player = @game.player2.username
      end
  end

end
