class TicTacToeMovesController < ApplicationController
  def index
    @moves = TicTacToeMove.all
  end

  def show

  end

  def new
    @game = TicTacToeGame.find(params[:tic_tac_toe_game_id].to_i)
    #to do - check whether the move is legal (incase someone is hacking!) 
    @game.tic_tac_toe_moves.build(move: params[:move], user_id: current_user.id).save
    redirect_to tic_tac_toe_game_path(@game)    
  end

  def create

  end

  def edit
  end

  def update
  end

  def destroy
  end
end