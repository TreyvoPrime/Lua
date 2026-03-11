-- player decision 
io.write("Rock, Paper, or Scissors:")
player_decision = io.read()
player_decision = string.lower(player_decision)
actions = {"rock", "paper", "scissors"}
rules = {
    rock = "scissors",
    paper = "rock",
    scissors = "paper"
}
function game_running()
    local ai_choice = 0
    local valid_check = false
    -- assign a random value for the ai 
    ai_random_number_variable = math.random(1, 3)
    if ai_random_number_variable == 1 then
        ai_choice = actions[1]
    elseif ai_random_number_variable == 2 then
        ai_choice = actions[2]
    elseif ai_random_number_variable == 3 then
        ai_choice = actions[3]
    end
    -- iterate through the actions table and check if the input matches an action
    for iteration, action in ipairs(actions) do
        if action == player_decision then
            player_decision = actions[iteration]
            valid_check = true

            if player_decision == ai_choice then
                print("its a draw----")
                print("The ai chooses " .. ai_choice .. " also")

            elseif rules[player_decision] == ai_choice then
                print("You win!")
                print("The ai chooses " .. ai_choice .. "")

            else
                print("The ai chooses " .. ai_choice .. "")
                print("You lose!")
            end
        end
    end

    if valid_check == false then
        print("Invalid choice...")
    end

end
game_running()
