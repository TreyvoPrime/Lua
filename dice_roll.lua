-- take input 
io.write("Would you like to roll the dice? 1/yes 2/no: ")
decision = io.read()
dice = 0
-- dice roll function
function dice_roll(dice)
    if decision == "1" then
        dice = math.random(1, 6)

        print("You've rolled a " .. dice .. " good job!")

    elseif decision == "2" then
        print("You have chosen to not play the game")
    end

end
-- call function 
local print_func = dice_roll(dice)
