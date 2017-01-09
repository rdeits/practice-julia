a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]

print("Please give me an upper bound: ")
threshold = parse(Int, readline(STDIN))

println("List comprehension:")
println([x for x in a if x < threshold])

println("Filter expression:")
println(filter(x -> x < threshold, a))

println("Loop:")
for x in a
    if x < threshold
        println(x)
    end
end
