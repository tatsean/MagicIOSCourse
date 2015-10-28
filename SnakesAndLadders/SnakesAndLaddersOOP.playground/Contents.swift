//: [Previous](@previous)
/*:
# Assignment: Snake & Ladders
Now that you've got some idea how Swift looks like, it's time for you to get your hands dirty doing the first Swift assignment.

Build a simple Snake & Ladders game. You'll need to have some game setup function, which keeps a board of 100 squares. Some of the squares are "Snakes", meaning that a player who lands on the square will fall back a number of positions. Some of the squares are "Ladders", where a player who lands there will go forward a number of positions. The goal, is to be the first to reach the 100th square. You can set the number of players as a variable, anything between 2 to 5 makes a good number.

The main loop will basically roll the dice for each player, and print out the their current position, rolled dice, new position, and effect of landing on a snake or ladder.

No user input is expected for this simple assignment. The program just has to keep on running until one player reaches the goal.
*/
import Foundation

class Dice
{
    func rollDice() -> Int
    {
        return (Int(arc4random_uniform(UInt32(6))) + 1)
    }
    
    
}

class SnakesLaddersGame
{
    let finalSquare = 100
    let dice = Dice()
    var board: [Int]
    
    init()
    {
        board = [Int](count: finalSquare + 1, repeatedValue: 0)
        boardSetup()
    }
    
    func boardSetup() {
        // setup the board by defining the location here snake/ladder exist
        //
        board[04] = +21
        board[08] = +22
        board[32] = +39
        board[42] = +42
        board[62] = +38
        
        board[28] = -18
        board[52] = -37
        board[44] = -22
        board[61] = -18
        board[82] = -27
        board[96] = -61
        board[91] = -26
    }
    
    func play(player: Player, diceRoll: Int) -> Bool
    {
        player.currentPosition = player.currentPosition + diceRoll
        
        print("Player name >> \(player.playerName) , currentPosition >> \(player.currentPosition), diceRoll >> \(diceRoll)")
        
        // check whether there is any winner
        //
        if (player.currentPosition < board.count)
        {
            // if no winner, check whether the current position reaches any ladder or snake
            // in order to increase/descrease the number
            //
            player.currentPosition += board[player.currentPosition]
            // print ("final current position >>> \(currentPosition)")
            return false
        }
        else
        {
            // winner is found and break out from the while
            //
            return true
        }
    }
}

class Player
{
    var playerName : String
    var currentPosition: Int
    
    init(playerName: String, currentPosition: Int = 0)
    {
        self.playerName = playerName
        self.currentPosition = currentPosition
    }
    
    func rollDice(dice: Dice) -> Int
    {
        return dice.rollDice()
    }
}

var game = SnakesLaddersGame()
var dice = Dice()
var player1 = Player(playerName: "Player 1")
var player2 = Player(playerName: "Player 2")

var players: [Player] = [Player]()
players.append(player1)
players.append(player2)

var diceRoll: Int = 0
var winner: Bool = false

while (!winner)
{
    for player in players
    {
        diceRoll = player.rollDice(dice)
        // winner = player.move(game, diceRoll: diceRoll)
        winner = game.play(player, diceRoll: diceRoll)
        if (winner)
        {
            break;
        }
    }
}









