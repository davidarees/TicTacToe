class TicTacToeGamesController < ApplicationController

  def index
    @games = TicTacToeGame.all
  end

  def show
    @game = TicTacToeGame.find(params[:id])
    if @current_player
      TicTacToeGame.change_user
    else
      @current_player = current_user.username
    end
    @moves = @game.tic_tac_toe_moves
  end

  def new
    @game = TicTacToeGame.new
  end

  def create
    @game = TicTacToeGame.new(params[:tic_tac_toe_game])
    @game.player1_id = current_user.id

    if @game.save
      redirect_to @game
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end