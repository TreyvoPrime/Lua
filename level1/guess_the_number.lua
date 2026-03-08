local number = math.random(1, 100)

while user_guess ~= number do
    io.write("What is your guess:")
    local user_guess = io.read()
    local user_guess = tonumber(user_guess)

    if user_guess == number then
        print("You guess the number " .. number .. "which is the right number")
    elseif user_guess > number then
        print("you guessed too high try again!")

    elseif user_guess < number then
        print("You guessed too low try again!")

    end
end
