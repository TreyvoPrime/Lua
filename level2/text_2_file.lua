local file = io.open("output.txt", "a")
function file_writer()
    local written_text = ""

    while written_text ~= "exit" do
        io.write("What notes would you like to add to file:")
        print("Enter 'exit' to exit, 1/delete file 2/close file")

        written_text = io.read()
        if written_text ~= "exit" and written_text ~= "1" and written_text ~= "2" then
            print("Successfully written " .. written_text .. " to file")
            file:write(written_text .. "\n")
            file:flush()

        end
        print("--------------------------------------------------")

        if written_text == "1" then
            os.remove("output.txt")
            print("File has been deleted")
            break
        else
            if written_text == "2" then
                file:close()
                print("File has been closed")
                break
            end
        end
    end
end
file_writer()
