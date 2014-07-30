class TicTacToeGame < ActiveRecord::Base
  attr_accessible :number_of_games_drawn, :number_of_games_won_by_player1, :number_of_games_won_by_player2, :player1_id, :player2_id

  belongs_to :player1, :class_name => "User"
  belongs_to :player2, :class_name => "User"
  has_many :tic_tac_toe_moves

  def is_next_to_play? user
    return player1_id if tic_tac_toe_moves.empty?
    #i.e. not the last mover!
    !(tic_tac_toe_moves.last.user_id  == user.id)
  end

  def get_next_player
    moves = self.tic_tac_toe_moves
    return player1_id if moves.empty?
    last_played_id = moves.last.user_id
    #following line will output in the array the one which doesn't match last_played_id
    next_player_id = ([self.player1_id, self.player2_id] - [last_played_id]).first 
    if next_player_id == player1_id
      self.player1.username
    else
      self.player2.username
    end
  end

  def check_game(moves)
    if moves.count > 4 
     #set array
     arr = []
     (1..9).each  {|a| arr.push('-')}
     last_played_id = moves.last.user_id
      moves.each do |m|
        if m.user_id = last_played_id
          arr.delete_at(m.move.to_i)
          arr.insert(m.move.to_i, 1)
        end
      end
    end
   binding.pry 
  end
end