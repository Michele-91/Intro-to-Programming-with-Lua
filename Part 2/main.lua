print("Welcome to the game.")

input = ""
while input ~= "leave cave" do
    print("What do you want to do?")
    input = io.read()
    if input == "inspect" then
        print("You are in a cave")
    end

    if input == "leave cave" then
        print("You leave the cave")
    end
end

input = ""
while input ~= "follow path" do
    print("What do you want to do?")
    input = io.read()
    if input == "inspect" then
        print("You are at the base of a hill. There is a path")
    end

    if input == "follow path" then
        print("You follow the path")
    end
end

input = ""
have_key = false

while not (have_key == true and input == "open gate") do
    print("What do you want to do?")
    input = io.read()
    if input == "inspect" then
        if have_key == false then 
            print("There is a gate. A key is hidden in the grass")
        end
        if have_key == true then
            print("There is a gate")
        end
    end

    if input == "grab key" then
        have_key = true
        print("You grabbed the key.")
    end

    if input == "open gate" then
        if have_key == true then
            print("You've escaped")
        end
        if have_key == false then
            print("The gate is locked")
        end
    end
end

print("You win!")