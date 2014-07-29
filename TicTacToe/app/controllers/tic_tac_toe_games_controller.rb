class TicTacToeGamesController < ApplicationController
  def index
    @games = TicTacToeGame.all
  end

  def show
    @game = TicTacToeGame.find(params[:id])
    @moves = @game.tic_tac_toe_moves
  end

  def new
    @game = TicTacToeGame.new
  end

  def create
    @game = TicTacToeGame.new(params[:tic_tac_toe_game])
    @game.player1_id = current_user.id
    if @game.save
        (1..9).each do |x|
        @game.tic_tac_toe_moves.create(move: x)
        end
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