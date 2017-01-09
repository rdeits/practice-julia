print("Please give me a string: ")
s = strip(readline(STDIN))

if s == reverse(s)
    println("Your string is a palindrome")
else
    println("Your string is NOT a palindrome")
end
