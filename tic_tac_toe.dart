import 'dart:io';

void main() {
  // Create a list to represent the tic-tac-toe board, initialized with empty spaces
  List<String> board = List.filled(9, ' ');

  // Variable to keep track of player's turn
  bool isPlayer1Turn = true;

  // Variable to count the number of moves made
  int moves = 0;

  // Print a welcome message
  print('Welcome to Tic-Tac-Toe!\n');

  // Call a function to print the current state of the board
  printBoard(board);

  while (true) {
    // Prompt the current player to enter their move (1-9)
    print(
        '\n${isPlayer1Turn ? "Player 1" : "Player 2"}, enter your move (1-9): ');

    // Read the input from the player
    String? input = stdin.readLineSync();

    if (input == null) {
      // Handle invalid input (e.g., user pressed Ctrl+C)
      print('Invalid input. Please try again.');
      continue;
    }

    try {
      // Convert the input to an integer
      int move = int.parse(input);

      // Check if the move is invalid (out of range or already occupied)
      if (move < 1 || move > 9 || board[move - 1] != ' ') {
        print('Invalid move. Try again.');
        continue;
      }

      // Update the board with the current player's move
      board[move - 1] = isPlayer1Turn ? 'X' : 'O';
      moves++;

      // Print the updated board
      printBoard(board);

      // Check if there is a winner
      if (checkWin(board)) {
        print('${isPlayer1Turn ? "Player 1" : "Player 2"} wins!');
        break;
      } else if (moves == 9) {
        // Check if it's a draw
        print("It's a draw!");
        break;
      }

      // Switch turns between players
      isPlayer1Turn = !isPlayer1Turn;
    } catch (e) {
      // Handle invalid input (e.g., user entered a string)
      print('Invalid input. Please enter a number (1-9).');
    }
  }
}

// Function to print the current state of the board
void printBoard(List<String> board) {
  print('');
  print(' ${board[0]} | ${board[1]} | ${board[2]} '); // Print the first row
  print('-----------');
  print(' ${board[3]} | ${board[4]} | ${board[5]} '); // Print the second row
  print('-----------');
  print(' ${board[6]} | ${board[7]} | ${board[8]} '); // Print the third row
  print('');
}

// Function to check if there is a winner
bool checkWin(List<String> board) {
  // Check rows
  for (int i = 0; i < 9; i += 3) {
    if (board[i] != ' ' &&
        board[i] == board[i + 1] &&
        board[i] == board[i + 2]) {
      return true;
    }
  }

  // Check columns
  for (int i = 0; i < 3; i++) {
    if (board[i] != ' ' &&
        board[i] == board[i + 3] &&
        board[i] == board[i + 6]) {
      return true;
    }
  }

  // Check diagonals
  if (board[0] != ' ' && board[0] == board[4] && board[0] == board[8]) {
    return true;
  }
  if (board[2] != ' ' && board[2] == board[4] && board[2] == board[6]) {
    return true;
  }

  return false;
}
