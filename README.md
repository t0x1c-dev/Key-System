# Proton Services

## Key System

An open source key system for Roblox, built to look clean and feel smooth. Drop it in front of your hub, set your branding, and you're done.

**Current version: v1.0.0**

## Features

- Clean dark UI with rounded corners, thin strokes and the Inter font
- Custom banner and logo support
- Smooth open, close and hover animations
- Stacking toast notifications with a dismiss button
- Simple config table with a single callback to check the key
- Optional "Get Key" button with your own link handler

## Usage

Put this at the top of your script:

```lua
local KeySystem = loadstring(game:HttpGet("https://raw.githubusercontent.com/t0x1c-dev/Key-System/main/build.lua", true))()

KeySystem:Create({
    Title = "Your Hub Name",
    Subtitle = "Enter your key to continue",
    LogoId = "rbxassetid://0",
    BannerId = "rbxassetid://0",
    OnSubmit = function(key)
        if key == "Your Key Here" then
            return true
        end
        return false
    end,
    OnGetKey = function()
        setclipboard("YOUR_KEY_LINK")
    end
})
```

## Loading your hub after the key

`Create` doesn't pause your script, so anything below it runs right away. To load your hub only when the key is correct, run it inside `OnSubmit`:

```lua
OnSubmit = function(key)
    if key == "Your Key Here" then
        task.spawn(function()
            loadstring(game:HttpGet("YOUR_HUB_SCRIPT_URL"))()
        end)
        return true
    end
    return false
end
```

## Config

| Option | Type | Description |
| --- | --- | --- |
| `Title` | string | Name shown next to the logo |
| `Subtitle` | string | Small text under the title |
| `LogoId` | string | Logo asset, for example `rbxassetid://123` |
| `BannerId` | string | Banner image shown at the top of the frame |
| `OnSubmit` | function(key) | Receives the typed key. Return `true` if it's valid, otherwise `false` |
| `OnGetKey` | function | Runs when the user clicks "Don't have a key? Get one here" |

## Notifications

The key system shows a notification when:

- the key box is empty
- the key is wrong
- the key is accepted
- the key link is copied

Up to 4 notifications show at once, and each one can be dismissed with its X button.

## Requirements

- A Roblox executor that supports `loadstring` and `game:HttpGet`
- `setclipboard`, only if you use it in `OnGetKey`

## Contributing

Issues and pull requests are welcome. If you change the UI, keep the existing style so it stays consistent.
