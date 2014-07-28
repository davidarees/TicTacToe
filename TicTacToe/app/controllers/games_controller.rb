class GamesController < ApplicationController
  def index
    binding.pry
    @games = TicTacToeGame.all
  end

  def show

  end

  def new
    
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