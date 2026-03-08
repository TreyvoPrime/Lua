first_names = {"Alex", "Jordan", "Sam"}
last_names = {"Smith", "Lee", "Brown"}
completed_name = " "
function name_maker()
    random_index_first = math.random(1, 3)
    random_index_last = math.random(1, 3)

    completed_first_name = first_names[random_index_first]

    completed_first_name = tostring(completed_first_name)

    completed_last_name = last_names[random_index_last]

    completed_last_name = tostring(completed_last_name)
    local completed_name = completed_first_name .. " " .. completed_last_name
    print("This is your new name!", completed_name)
end

local print_func = name_maker()

