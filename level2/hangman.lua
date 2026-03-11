words = {"skeleton", "gorilla", "elephant", "mountain", "castle", "dragon", "pirate", "jungle", "thunder", "planet",
         "wizard", "diamond", "mystery", "treasure", "sunset", "butterfly", "octopus", "rainbow", "sandwich", "vacation"}

function hangman()

    print("Welcome to hangman! You must guess the word in 6 tries.")

    local random_indexer = math.random(1, #words)
    local word = words[random_indexer]
    local word_length = string.len(word)

    print("The word has " .. word_length .. " letters.")

    local guess_count = 6
    local progress = {}

    -- generate the underscore line
    for i = 1, word_length do
        progress[i] = "_"
    end

    while guess_count > 0 do

        print("\nWord: " .. table.concat(progress, " "))
        print("Tries left: " .. guess_count)

        io.write("Enter a letter: ")
        local entered_letter = io.read()

        local correct = false

        for i = 1, word_length do
            if string.sub(word, i, i) == entered_letter then
                progress[i] = entered_letter
                correct = true
            end
        end

        if correct then
            print("Correct guess!")
        else
            guess_count = guess_count - 1
            print("Wrong guess!")
        end

        -- check if the word is completed
        if table.concat(progress) == word then
            print("\nYou won! The word was: " .. word)
            return
        end
    end

    print("\nYou lost! The word was: " .. word)
end

hangman()
