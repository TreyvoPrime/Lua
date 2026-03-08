-- take first number input
io.write("first number:")
first_number = io.read()
first_number = tonumber(first_number)
-- take second number input

io.write("second number:")
second_number = io.read()
-- convert inputted strings to number 
second_number = tonumber(second_number)
-- ask for arithmetric operator 
io.write("Choose 1 for addition, 2/subraction, 3/multiplication, 4/division: ")

local arithmetic_decision = io.read()
-- set global variable 
answer = 0
if arithmetic_decision == "1" then
    answer = first_number + second_number
    -- adittion
    print("You have chosen addition your answer is: ", answer)
elseif arithmetic_decision == "2" then
    answer = first_number - second_number
    -- subtraction
    print("You have chosen subtraction your answer is: ", answer)

elseif arithmetic_decision == "3" then
    answer = first_number * second_number
    -- multiplcation
    print("You have chosen multiplication your answer is: ", answer)
    -- division
elseif arithmetic_decision == "4" then
    answer = first_number / second_number
    print("You have chosen division your answer is: ", answer)
end
