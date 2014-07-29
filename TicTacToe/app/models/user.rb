class User < ActiveRecord::Base
  attr_accessible :first_name, :image, :last_name, :password, :password_confirmation, :role, :username, :email

  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true
  has_many :tic_tac_toe_games
  has_many :tic_tac_toe_moves
  
  def role?(role_to_test)
    self.role.to_s == role_to_test.to_s
  end
end
