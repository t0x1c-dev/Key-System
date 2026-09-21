local KeySystem = loadstring(game:HttpGet("https://raw.githubusercontent.com/t0x1c-dev/Key-System/main/build.lua", true))()

KeySystem:Create({
    Title = "Your Hub Name", -- ur script name
    Subtitle = "Enter your key to continue", -- preferably keep it as this!
    LogoId = "rbxassetid://0", -- your logo (required)
    BannerId = "rbxassetid://0", -- your banner (required)
    OnSubmit = function(success)
        if success == "Your Key Here" then
            -- loadstring here
            return true
        end
        return false 
    end, --[[ EVERYTHING HERE KEEP, IT MAKES IT WORK! ]] 
    OnGetKey = function() 
      -- setclipboard("your link")
    end
})
