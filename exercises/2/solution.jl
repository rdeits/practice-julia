print("Please give me a number: ")
number = parse(Int, readline(STDIN))

if number % 2 == 0
    println("$number is even")
else
    println("$number is odd")
end

print("Please give me a number to check: ")
num = parse(Int, readline(STDIN))
print("Please give me a number to divide by: ")
check = parse(Int, readline(STDIN))

if num % check == 0
    println("$check can be divided evenly into $num")
else
    println("$check can NOT be divided evenly into $num")
end
