WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [6, 4, 2]
]

def won?(board)
  WIN_COMBINATIONS.each {|win_combo|
    index_0 = win_combo[0]
    index_1 = win_combo[1]
    index_2 = win_combo[2]

    puts index_0
    puts index_1
    puts index_2

    position_1 = board[index_0]
    position_2 = board[index_1]
    position_3 = board[index_2]

    puts position_1
    puts position_2
    puts position_3

    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return win_combo
    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
      return win_combo
    end
  }
  return false
end
board = [" ", " ", " ", "X", "X", "X", " ", " ", " "]
won?(board)