io.write("Temperature being converted (1 = Fahrenheit to Celsius, 2 = Celsius to Fahrenheit): ")
desired_conversion = io.read()

io.write("Temperature: ")
tempature_number = tonumber(io.read())

function conversion_function()
    local conversion = {"fahrenheit", "celsius"}

    if desired_conversion == "1" then
        tempature_type = conversion[1]

        tempature_number = (tempature_number - 32) * 5 / 9

        print("temperature type: " .. tempature_type, tempature_number)

    elseif desired_conversion == "2" then
        tempature_type = conversion[2]

        tempature_number = (tempature_number * 9 / 5) + 32

        print("temperature type: " .. tempature_type, tempature_number)
    end
end

conversion_function()
