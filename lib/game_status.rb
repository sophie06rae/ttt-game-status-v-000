# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
[0,1,2],
[3,4,5],
[6,7,8],
[0,3,6],
[1,4,7],
[2,5,8],
[0,4,8],
[6,4,2],
]

def won?(board)

WIN_COMBINATIONS.each do |x|

  win_index_1 = x[0]
  win_index_2 = x[1]
  win_index_3 = x[2]

  position_1 = board[win_index_1]
  position_2 = board[win_index_2]
  position_3 = board[win_index_3]

  if position_1 == "X" && position_2 == "X" && position_3 == "X"
    return x # return the win_combination indexes that won.
  elsif position_1 == "O" && position_2 == "O" && position_3 == "0"
  return x
else
  false
    end
  end
end
