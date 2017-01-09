print("Please give me a number: ")
num = parse(Int, readline(STDIN))

for x in 2:Int(floor(num / 2))
    if num % x == 0
        println(x)
    end
end
