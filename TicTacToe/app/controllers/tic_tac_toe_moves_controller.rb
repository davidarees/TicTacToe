class TicTacToeMovesController < ApplicationController
  def index
    @moves = TicTacToeMove.all
  end

  def show

  end

  def new
    
  end

  def create
    
  end

  def edit
    @move = Move.find(params[:id])
    if @recipe.update_attributes(params[:recipe])
      redirect_to @recipe, :notice  => "Successfully updated recipe."
    else
      render :action => 'edit'
    end
  end

  def update
  end

  def destroy
  end
end