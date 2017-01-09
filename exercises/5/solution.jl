# List of 15 random values in the range [1, 20] inclusive
a = rand(1:20, 15)

# List of 20 random values in the range [1, 10] inclusive
b = rand(1:10, 20)

result = Int[]
for x in a
    if x in b && !(x in result)
        push!(result, x)
    end
end
println(result)
