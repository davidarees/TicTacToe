class TicTacToeGamesController < ApplicationController

  def index
    @games = TicTacToeGame.all
  end

  def show
    @game = TicTacToeGame.find(params[:id])
    @moves = @game.tic_tac_toe_moves
    if @game.check_game(@moves)
      flash[:notice] = '#{@game.tic_tac_toe_moves.last.user_id.full_name} WINS'
      binding.pry
      @game.put_game_result_in_table
    elsif @game.check_draw
      flash[:notice] = 'DRAW'
    end
    @current_player = @game.get_next_player
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