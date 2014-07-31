u1 = User.create(first_name: "Computer", role: "admin", username: "Computer", email: "Computer@Computer.com", password: "password", password_confirmation: "password")
u2 = User.create(first_name: "Admin", role: "admin", username: "Admin", email: "Admin@Admin.com", password: "password", password_confirmation: "password")
u3 = User.create(first_name: "User_seed", role: "user", username: "user_seed", email: "user@user.com", password: "password", password_confirmation: "password")
u4 = User.create(first_name: "User2_seed", role: "user", username: "user2_seed", email: "user2_seed@user.com", password: "password", password_confirmation: "password")

g1 = TicTacToeGame.create(player1_id: u1, player2_id: u2, game_complete: true, winner_id: 0)
g2 = TicTacToeGame.create(player1_id: u3, player2_id: u1)
g3 = TicTacToeGame.create(player1_id: u2, player2_id: u1, game_complete: true, winner_id: 2)

m1 = TicTacToeMove.create(tic_tac_toe_game_id: g1.id, user_id: u1.id, move: "3")
m2 = TicTacToeMove.create(tic_tac_toe_game_id: g1.id, user_id: u2.id, move: "2")
m3 = TicTacToeMove.create(tic_tac_toe_game_id: g1.id, user_id: u1.id, move: "6")
m4 = TicTacToeMove.create(tic_tac_toe_game_id: g1.id, user_id: u2.id, move: "1")
m5 = TicTacToeMove.create(tic_tac_toe_game_id: g1.id, user_id: u1.id, move: "7")
m6 = TicTacToeMove.create(tic_tac_toe_game_id: g2.id, user_id: u3.id, move: "1")
m7 = TicTacToeMove.create(tic_tac_toe_game_id: g2.id, user_id: u1.id, move: "3")
m8 = TicTacToeMove.create(tic_tac_toe_game_id: g2.id, user_id: u3.id, move: "4")
m9 = TicTacToeMove.create(tic_tac_toe_game_id: g2.id, user_id: u1.id, move: "6")
m10 = TicTacToeMove.create(tic_tac_toe_game_id: g3.id, user_id: u2.id, move: "3")
m11 = TicTacToeMove.create(tic_tac_toe_game_id: g3.id, user_id: u1.id, move: "2")
m12 = TicTacToeMove.create(tic_tac_toe_game_id: g3.id, user_id: u2.id, move: "6")
m13 = TicTacToeMove.create(tic_tac_toe_game_id: g3.id, user_id: u1.id, move: "1")
m14 = TicTacToeMove.create(tic_tac_toe_game_id: g3.id, user_id: u2.id, move: "7")



