```markdown
# Rock, Paper, Scissors Game

## Description

A simple Rock, Paper, Scissors game implemented in shell scripting. This game allows players to engage in two modes:
1. **One vs. One**: Compete against another player.
2. **Play with CPU**: Challenge a computer opponent.

## Features

- **Play for 5 Rounds**: Engage in up to five rounds of Rock, Paper, Scissors.
- **Score Tracking**: Keep track of scores for both players and the CPU.
- **Final Results**: Displays the final scores and declares the winner.

## Usage

1. **Make the Script Executable**

   Before running the script, ensure it is executable. Use the following command:
   ```bash
   chmod +x rock_paper_scissors.sh
   ```

2. **Run the Script**

   Execute the script with:
   ```bash
   ./rock_paper_scissors.sh
   ```

3. **Game Menu**

   The script will present you with a menu:
   - **1. Play One VS One**: Play against another player.
   - **2. Play with CPU**: Play against the computer.
   - **3. Exit the Game**: Quit the script.

## How It Works

- **Game Rules**: 
  - Rock beats Scissors
  - Scissors beats Paper
  - Paper beats Rock

- **Input Validation**: Ensures valid input (1 for Rock, 2 for Paper, 3 for Scissors).
- **Scoring System**: Accumulates scores for each player or player vs. CPU.

## Example

```bash
      |==================================================================|
      |****** Rock, Paper, Scissors Game ********|
      |****** Using Shell Scripting *************|
      |****** Created By: Umair Munir ***********|
      |==================================================================|

----------------------------------
** Rules **
Rock Vs Scissors -> Rock
Rock Vs Paper -> Paper
Paper Vs Scissors -> Scissors
Paper Vs Rock -> Paper
Scissors Vs Rock -> Rock
Scissors Vs Paper -> Scissors
----------------------------------

------------------------------
             Main Menu
------------------------------
1. Play One VS One
2. Play with CPU
3. Exit the Game!
------------------------------
Enter your option :
```

## Contributing

Contributions are welcome! Feel free to fork the repository and submit pull requests. For any issues or suggestions, open an issue in the repository.

---

**🕹️ Enjoy the game and may the best hand win! 🌟**
```
