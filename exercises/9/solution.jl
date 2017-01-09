finished = false
while !finished
    secret = rand(1:9)
    println("I'm thinking of a number between 1 and 9...")
    while true
        print("Please enter your guess: (or 'exit' to quit) ")
        input = strip(readline(STDIN))
        if input == "exit"
            finished = true
            break
        end
        guess = parse(Int, input)
        if guess < secret
            println("Too low")
        elseif guess > secret
            println("Too high")
        else
            println("You got it! The number was $secret")
            break
        end
    end
end
