io.write("What is your password NOT SAVED:")
password = io.read()
password = tostring(password)
-- Character value assignments based on weight/complexity for password strength
-- Lowercase: 1, Uppercase: 2, Digits: 3, Special: 4
char_values = {
    -- Lowercase letters (value = 1)
    ["a"] = 2,
    ["b"] = 2,
    ["c"] = 2,
    ["d"] = 2,
    ["e"] = 2,
    ["f"] = 2,
    ["g"] = 2,
    ["h"] = 2,
    ["i"] = 2,
    ["j"] = 2,
    ["k"] = 2,
    ["l"] = 2,
    ["m"] = 2,
    ["n"] = 2,
    ["o"] = 2,
    ["p"] = 2,
    ["q"] = 2,
    ["r"] = 2,
    ["s"] = 2,
    ["t"] = 2,
    ["u"] = 2,
    ["v"] = 2,
    ["w"] = 2,
    ["x"] = 2,
    ["y"] = 2,
    ["z"] = 2,
    -- Uppercase letters (value = 2)
    ["A"] = 4,
    ["B"] = 4,
    ["C"] = 4,
    ["D"] = 4,
    ["E"] = 4,
    ["F"] = 4,
    ["G"] = 4,
    ["H"] = 4,
    ["I"] = 4,
    ["J"] = 4,
    ["K"] = 4,
    ["L"] = 4,
    ["M"] = 4,
    ["N"] = 4,
    ["O"] = 4,
    ["P"] = 4,
    ["Q"] = 4,
    ["R"] = 4,
    ["S"] = 4,
    ["T"] = 4,
    ["U"] = 4,
    ["V"] = 4,
    ["W"] = 4,
    ["X"] = 4,
    ["Y"] = 4,
    ["Z"] = 4,
    -- Digits (value = 3)
    ["0"] = 6,
    ["1"] = 3,
    ["2"] = 6,
    ["3"] = 6,
    ["4"] = 6,
    ["5"] = 6,
    ["6"] = 6,
    ["7"] = 6,
    ["8"] = 6,
    ["9"] = 6,
    -- Special characters (value = 4)
    ["!"] = 8,
    ["@"] = 8,
    ["#"] = 8,
    ["$"] = 8,
    ["%"] = 8,
    ["^"] = 8,
    ["&"] = 8,
    ["*"] = 8,
    ["("] = 8,
    [")"] = 8,
    ["-"] = 8,
    ["_"] = 8,
    ["="] = 8,
    ["+"] = 8,
    ["["] = 8,
    ["]"] = 8,
    ["{"] = 8,
    ["}"] = 8,
    ["|"] = 8,
    ["\\"] = 8,
    [";"] = 8,
    [":"] = 8,
    ["'"] = 8,
    ["\""] = 8,
    [","] = 8,
    ["."] = 8,
    ["<"] = 8,
    [">"] = 8,
    ["/"] = 8,
    ["?"] = 8,
    ["`"] = 8,
    ["~"] = 8
}

function pass_evalulator(pass_strength)
    local pass_strength = 0
    for char, value in pairs(char_values) do
        if string.find(password, char, 1, true) then
            pass_strength = pass_strength + value
            print(char .. " found, character strength: " .. value .. " adding values together ")
            print("password strength is: " .. pass_strength)
            print("_______________________________")
        end
    end
    return pass_strength

end
pass_evalulator(pass_strength)
pass_strength = pass_evalulator()

function pass_recomendations(pass_strength)
    if pass_strength < 10 then
        print(
            "Your password is very weak, please consider adding more capital letters, special characters, and numbers.")
        print("_______________________________")
        print(" total password strength is: " .. pass_strength)

    elseif pass_strength < 10 and pass_strength <= 25 then
        print("Your password is weak, please consider adding more capital letters, special characters, and numbers.")
        print("_______________________________")
        print(" total password strength is: " .. pass_strength)

    elseif pass_strength > 25 and pass_strength <= 50 then
        print(
            "You have a good password, however it could be stronger. Please consider adding more capital letters, numbers, or special characters to strengthen it")
        print("_______________________________")
        print(" total password strength is: " .. pass_strength)
    elseif pass_strength < 50 and pass_strength < 75 then
        print(
            "You have a great password. Its sufficient enough to be secured! However, if you would want a strongert password consider adding more special characters")
        print("_______________________________")
        print(" total password strength is: " .. pass_strength)

    else
        print("your password is very secured and up to security standards!")
        print(" total password strength is: " .. pass_strength)

    end
end
pass_recomendations(pass_strength)

