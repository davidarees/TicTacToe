class TicTacToeGamesController < ApplicationController
  def index
    @games = TicTacToeGame.all
  end

  def show
  end

  def new
    @game = TicTacToeGame.new
  end

  def create
    binding.pry
    @game = TicTacToeGame.new(params[:user])
  end

  def edit
  end

  def update
  end

  def destroy
  end
end