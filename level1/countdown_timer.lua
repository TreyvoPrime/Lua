io.write("What number would you like to countdown from:")
timer = io.read()
timer = tonumber(timer)
for count = timer, 1, -1 do
    print(count)
end
