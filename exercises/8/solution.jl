function validate(input, choices)
    input = lowercase(strip(input))
    if input in choices
        input
    else
        error("Please enter one of 'rock', 'paper', or 'scissors'")
    end
end

function winner(player1, player2)
    if player1 == player2
        0
    elseif player1 == "rock" && player2 == "paper"
        2
    elseif player1 == "rock" && player2 == "scissors"
        1
    elseif player1 == "paper" && player2 == "rock"
        1
    elseif player1 == "paper" && player2 == "scissors"
        2
    elseif player1 == "scissors" && player2 == "rock"
        2
    elseif player1 == "scissors" && player2 == "paper"
        1
    else
        error("I don't know how to compare: $player1 and $player2")
    end
end

while true
    print("Player 1: ")
    player1 = validate(readline(STDIN), ["rock", "paper", "scissors"])
    print("Player 2: ")
    player2 = validate(readline(STDIN), ["rock", "paper", "scissors"])
    result = winner(player1, player2)
    if result == 1
        println("Player 1 wins!")
    elseif result == 2
        println("Player 2 wins!")
    else
        println("It's a tie!")
    end
    print("Would you like to play again? [y or n] ")
    choice = readline(STDIN)
    if choice[1] == 'n'
        break
    end
end
