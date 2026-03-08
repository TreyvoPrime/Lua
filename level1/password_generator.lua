-- desired length input 
io.write("How many digits do you want the generated password to have:")
pass_length = io.read()
pass_length = tonumber(pass_length)
pass_characters = {"a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t",
                   "u", "v", "w", "x", "y", "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N",
                   "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7",
                   "8", "9", "!", "@", "#", "$", "%", "^", "&", "*", "(", ")", "-", "_", "=", "+", "[", "]", "{", "}",
                   ";", ":", "'", "\"", ",", ".", "<", ">", "/", "?", "\\", "|", "`", "~"}
function password_generator(pass_length)
    local password = " "
    for i = 1, pass_length do
        password = password .. pass_characters[math.random(#pass_characters)]

    end
    print(password)

end
local print_func = password_generator(pass_length)
