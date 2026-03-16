-- Number Guessing AI Game
-- Player thinks of a number (1-100), AI tries to guess it with interactive questions.
-- Note: Code has some incomplete logic and potential bugs, but comments describe intended sections.
-- Prompt the player to enter a secret number between 1 and 100 for the AI to guess.
io.write("Enter a number between 1 and 100 for the ai to guess: ")

-- Open thought.txt file in append mode to log AI thinking process (though not used in current code).
local thinking_process = io.open("thought.txt", "a")

-- Read player's input as string and convert to number.
player_number = io.read()
player_number = tonumber(player_number)

function value_in_table(value, tbl)
    for i = 1, #tbl do
        if tbl[i] == value then
            return true
        end
    end
    return false
end

-- Main function: AI attempts to guess the player's number through interactive questions.
function ai_number_guess()

    -- Generate AI's initial random guess between 1 and 100.
    local guess = math.random(1, 100)

    -- Initialize guess variable (set to 0, possibly for tracking).
    local low = 1
    local high = 100

    -- Prompt player if the initial guess is correct (expects 'no' or 'yes').
    local number_between_table = {}
    local more_than_table = {}
    local less_than_table_1 = {}

    local factor_table_3 = {3, 6, 9, 12, 15, 18, 21, 24, 27, 30, 33, 36, 39, 42, 45, 48, 51, 54, 57, 60, 63, 66, 69, 72,
                            75, 78, 81, 84, 87, 90, 93, 96, 99}

    while true do

        io.write("Is your number " .. guess .. " yes/no: ")
        local player_first_answer = io.read()
        player_first_answer = string.lower(player_first_answer)

        if player_first_answer == "yes" then
            print("AI guessed correctly! Your number was " .. guess .. "!")
            break
        end

        -- Ask if number is bigger or less
        io.write("Is your number bigger or less than " .. guess .. " 1/bigger 2/less: ")
        local number_between = io.read()

        if number_between == "1" then
            low = guess + 1
        elseif number_between == "2" then
            high = guess - 1
        end

        -- Generate another random guess within the new range
        guess = math.random(low, high)

        io.write("Is your number divisible by 3; 1/yes 2/no: ")
        local factor_of_3 = io.read()

        if factor_of_3 == "1" then
            local factor_table_3_removed = {}

            for i = 1, #factor_table_3 do
                if factor_table_3[i] >= low and factor_table_3[i] <= high then
                    table.insert(factor_table_3_removed, factor_table_3[i])
                end
            end

            if #factor_table_3_removed > 0 then
                guess = factor_table_3_removed[math.random(1, #factor_table_3_removed)]
            end

        elseif factor_of_3 == "2" then
            local non_factor_table_3 = {}

            for i = low, high do
                if i % 3 ~= 0 then
                    table.insert(non_factor_table_3, i)
                end
            end

            if #non_factor_table_3 > 0 then
                guess = non_factor_table_3[math.random(1, #non_factor_table_3)]
            end
        end

    end
end

-- Call the AI guessing function.
ai_number_guess()
