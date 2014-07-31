class UsersController  < ApplicationController
  def index
    @users=User.all
  end
  def leaderboard
    @leaders = TicTacToeGame.where(game_complete: true).group(winner_id)
  end
  def show
    @user = User.find(params[:id])
    @games_unfinished = TicTacToeGame.unfinished_games(@user)
    @games_finished = TicTacToeGame.finished_games(@user).limit(10)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to root_path
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