class UsersController  < ApplicationController
  def index
    @users=User.all
    @leaderboard =  TicTacToeGame.where(game_complete: true).group('winner_id').count
  end 
  def leaderboard
    
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
      redirect_to new_session_path
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      redirect_to @user, :notice  => "Successfully updated user."
    else
      render :action => 'edit'
    end
  end

  def destroy
  end
end