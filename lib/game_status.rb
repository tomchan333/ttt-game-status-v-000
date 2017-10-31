# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6],
  # ETC, an array for each win combination
]

def won?(board)
  WIN_COMBINATIONS.detect do |array|
      win_index_1 = array[0]
      win_index_2 = array[1]
      win_index_3 = array[2]
      position_1 = board[win_index_1] # load the value of the board at win_index_1
      position_2 = board[win_index_2] # load the value of the board at win_index_2
      position_3 = board[win_index_3] # load the value of the board at win_index_3

      if position_1 == "X" && position_2 == "X" && position_3 == "X"
        return array # return the win_combination indexes that won.
      elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
        return array
      else
        false
      end
  end
end

def full?(board)
  board.none?{|cell| cell == " "}
end

def draw?(board)
  input = won?(board)
  input1 = full?(board)
  if input == true
    return false
  elsif input1 == false
    return false
  end
end
