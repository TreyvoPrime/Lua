io.write("How many questions will be on the multiplication quiz. MAX/15:")
question_count = io.read()
question_count = tonumber(question_count)
question_pull = {"What is 5 * 5:", "What is 6 * 3:", "what is 6 * 8", "What is 4 * 4:", "What is 9 * 9:",
                 "what is 6 * 7:", "What is 8 * 10:", "what is 4 * 8:", "What is 12 * 4:", "What is 6 * 3:",
                 "What is 2 * 14:", "What is 13 * 6:", "What is 3 * 3", "What is 6 * 4:", "What is 1 * 2:"}
-- answer pull 
answers = {5 * 5, 6 * 3, 6 * 8, 4 * 4, 9 * 9, 6 * 7, 8 * 10, 4 * 8, 12 * 4, 6 * 3, 2 * 14, 13 * 6, 3 * 3, 6 * 4, 1 * 2}
print(answers[1])
function question_func(question_count)
    local i = 1
    local correct_guess = 0
    local incorrect_guess = 0
    -- looop through the amount of questiosn 
    while i <= question_count do
        -- assign random number to for indexing  
        local select_number = math.random(1, #question_pull)
        local answer = answers[select_number]
        current_question = question_pull[select_number]
        io.write("your question is: ", current_question)
        local guess = tonumber(io.read())
        -- increment up the loop 

        i = i + 1
        -- check if guess is correct 
        if guess == answer then
            print("That is correct! moving onto the next question...")
            correct_guess = correct_guess + 1
        elseif guess ~= answer then
            -- determine if question count has been reached

            if i < question_count then
                print("That is wrong!... moving onto next question")
                incorrect_guess = incorrect_guess + 1
            elseif i > question_count then
                print("The quiz is over calculating your results...")
            end
        end

    end
    print("Correct:" .. correct_guess .. "!")
    print("Incorrect:" .. incorrect_guess .. "!")

end
question_func(question_count, answer)

