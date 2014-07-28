u1 = User.create(first_name: "Admin", role: "admin", username: "admin", email: "admin@admin.com")
u2 = User.create(first_name: "User", role: "user", username: "user", email: "user@user.com")
u3 = User.create(first_name: "User2", role: "user", username: "user2", email: "user2@user.com")

g1 = TicTacToeGame.create(player1: u1, player2: u2, number_of_games_won_by_player1: 34, number_of_games_won_by_player2: 23,number_of_games_drawn: 400)
g2 = TicTacToeGame.create(player1: u3, player2: u1, number_of_games_won_by_player1: 22, number_of_games_won_by_player2: 8,number_of_games_drawn: 12)

m1 = TicTacToeMove.create(game_id: g1.id, user_id: u1.id, move: "3")
m2 = TicTacToeMove.create(game_id: g1.id, user_id: u2.id, move: "2")
m3 = TicTacToeMove.create(game_id: g1.id, user_id: u1.id, move: "6")
m4 = TicTacToeMove.create(game_id: g1.id, user_id: u1.id, move: "1")
m5 = TicTacToeMove.create(game_id: g1.id, user_id: u2.id, move: "7")
m6 = TicTacToeMove.create(game_id: g2.id, user_id: u3.id, move: "1")
m7 = TicTacToeMove.create(game_id: g2.id, user_id: u1.id, move: "3")
m8 = TicTacToeMove.create(game_id: g2.id, user_id: u3.id, move: "4")
m9 = TicTacToeMove.create(game_id: g2.id, user_id: u1.id, move: "6")


