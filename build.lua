--[[
  ____            _                ____                  _               
 |  _ \ _ __ ___ | |_ ___  _ __   / ___|  ___ _ ____   _(_) ___ ___  ___ 
 | |_) | '__/ _ \| __/ _ \| '_ \  \___ \ / _ \ '__\ \ / / |/ __/ _ \/ __|
 |  __/| | | (_) | || (_) | | | |  ___) |  __/ |   \ V /| | (_|  __/\__ \
 |_|   |_|  \___/ \__\___/|_| |_| |____/ \___|_|    \_/ |_|\___\___||___/

              Made by: t0x1c
              v1.0.0 | Open Source
]]

local ps_1 = game:GetService("Players")
local ps_2 = game:GetService("TweenService")
local ps_3 = ps_1.LocalPlayer
local ps_4 = ps_3:WaitForChild("PlayerGui")
local ps_5 = {}
ps_5.__index = ps_5
local function ps_6(ps_18, ps_19, ps_20, ps_21, ps_22)
    local ps_23 = ps_2:Create(ps_18, TweenInfo.new(ps_20 or 0.3, ps_21 or Enum.EasingStyle.Quad, ps_22 or Enum.EasingDirection.Out), ps_19)
    ps_23:Play()
    return ps_23
end
local function ps_7(ps_24, ps_25)
    local ps_26 = Instance.new("UICorner")
    ps_26.CornerRadius = UDim.new(0, ps_25 or 10)
    ps_26.Parent = ps_24
    return ps_26
end
local function ps_8(ps_27, ps_28, ps_29)
    local ps_30 = Instance.new("UIStroke")
    ps_30.Color = ps_28 or Color3.fromRGB(70, 70, 70)
    ps_30.Thickness = ps_29 or 1
    ps_30.Parent = ps_27
    return ps_30
end
local function ps_9()
    return Font.new("rbxasset://fonts/families/Inter.json", Enum.FontWeight.Regular)
end
local function ps_10()
    return Font.new("rbxasset://fonts/families/Inter.json", Enum.FontWeight.Bold)
end
local function ps_11()
    return Font.new("rbxasset://fonts/families/Inter.json", Enum.FontWeight.Medium)
end
local ps_12
local ps_13 = 0
local ps_14 = {}
local ps_15 = 4
local function ps_16()
    if ps_12 and ps_12.Parent then
        return ps_12
    end
    local ps_31 = Instance.new("ScreenGui")
    -- random name so anti cheat can't match it by a fixed gui name
    ps_31.Name = "qW8nZ3vKx1Rt7YpL"
    ps_31.ResetOnSpawn = false
    ps_31.IgnoreGuiInset = true
    ps_31.DisplayOrder = 2147483647
    ps_31.Parent = ps_4
    local ps_32 = Instance.new("Frame")
    ps_32.AnchorPoint = Vector2.new(0.5, 0)
    ps_32.Position = UDim2.new(0.5, 0, 0, 16)
    ps_32.Size = UDim2.new(0, 270, 1, -32)
    ps_32.BackgroundTransparency = 1
    ps_32.Parent = ps_31
    local ps_33 = Instance.new("UIListLayout")
    ps_33.Padding = UDim.new(0, 6)
    ps_33.HorizontalAlignment = Enum.HorizontalAlignment.Center
    ps_33.VerticalAlignment = Enum.VerticalAlignment.Top
    ps_33.SortOrder = Enum.SortOrder.LayoutOrder
    ps_33.Parent = ps_32
    ps_12 = ps_32
    return ps_32
end
local function ps_17(ps_34, ps_35)
    local ps_36 = ps_16()
    ps_13 = ps_13 + 1
    local ps_37 = Instance.new("Frame")
    ps_37.Size = UDim2.new(1, 0, 0, 42)
    ps_37.BackgroundTransparency = 1
    ps_37.LayoutOrder = ps_13
    ps_37.Parent = ps_36
    local ps_38 = Instance.new("Frame")
    ps_38.Size = UDim2.fromScale(1, 1)
    ps_38.Position = UDim2.new(0, 0, 0, -60)
    ps_38.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
    ps_38.BackgroundTransparency = 1
    ps_38.Parent = ps_37
    ps_7(ps_38, 10)
    local ps_39 = ps_8(ps_38, Color3.fromRGB(60, 60, 60), 1)
    ps_39.Transparency = 1
    local ps_40 = Instance.new("ImageLabel")
    ps_40.Size = UDim2.fromOffset(20, 20)
    ps_40.AnchorPoint = Vector2.new(0, 0.5)
    ps_40.Position = UDim2.new(0, 12, 0.5, 0)
    ps_40.BackgroundTransparency = 1
    ps_40.Image = "rbxassetid://77181052625591"
    ps_40.ImageTransparency = 1
    ps_40.Parent = ps_38
    local ps_41 = Instance.new("TextLabel")
    ps_41.Size = UDim2.new(1, -78, 1, 0)
    ps_41.Position = UDim2.new(0, 42, 0, 0)
    ps_41.BackgroundTransparency = 1
    ps_41.Text = ps_34
    ps_41.FontFace = ps_11()
    ps_41.TextSize = 13
    ps_41.TextColor3 = Color3.fromRGB(255, 255, 255)
    ps_41.TextTransparency = 1
    ps_41.TextXAlignment = Enum.TextXAlignment.Left
    ps_41.TextTruncate = Enum.TextTruncate.AtEnd
    ps_41.Parent = ps_38
    local ps_42 = Instance.new("ImageButton")
    ps_42.Size = UDim2.fromOffset(20, 20)
    ps_42.AnchorPoint = Vector2.new(1, 0.5)
    ps_42.Position = UDim2.new(1, -10, 0.5, 0)
    ps_42.BackgroundTransparency = 1
    ps_42.Image = "rbxassetid://109885526184545"
    ps_42.ImageColor3 = Color3.fromRGB(170, 170, 170)
    ps_42.ImageTransparency = 1
    ps_42.Parent = ps_38
    ps_42.MouseEnter:Connect(function()
        ps_6(ps_42, {ImageColor3 = Color3.fromRGB(255, 255, 255)}, 0.15)
    end)
    ps_42.MouseLeave:Connect(function()
        ps_6(ps_42, {ImageColor3 = Color3.fromRGB(170, 170, 170)}, 0.15)
    end)
    local ps_43 = false
    local function ps_44()
        if ps_43 then
            return
        end
        ps_43 = true
        local ps_45 = table.find(ps_14, ps_44)
        if ps_45 then
            table.remove(ps_14, ps_45)
        end
        ps_6(ps_38, {Position = UDim2.new(0, 0, 0, -20), BackgroundTransparency = 1}, 0.3, Enum.EasingStyle.Quint)
        ps_6(ps_39, {Transparency = 1}, 0.3)
        ps_6(ps_41, {TextTransparency = 1}, 0.3)
        ps_6(ps_40, {ImageTransparency = 1}, 0.3)
        ps_6(ps_42, {ImageTransparency = 1}, 0.3)
        task.wait(0.3)
        ps_6(ps_37, {Size = UDim2.new(1, 0, 0, 0)}, 0.2, Enum.EasingStyle.Quint)
        task.wait(0.2)
        ps_37:Destroy()
    end
    ps_42.MouseButton1Click:Connect(ps_44)
    ps_6(ps_38, {Position = UDim2.new(0, 0, 0, 0), BackgroundTransparency = 0}, 0.35, Enum.EasingStyle.Quint)
    ps_6(ps_39, {Transparency = 0}, 0.35)
    ps_6(ps_41, {TextTransparency = 0}, 0.35)
    ps_6(ps_40, {ImageTransparency = 0}, 0.35)
    ps_6(ps_42, {ImageTransparency = 0}, 0.35)
    table.insert(ps_14, ps_44)
    if #ps_14 > ps_15 then
        task.spawn(ps_14[1])
    end
    task.delay(ps_35 or 2.5, ps_44)
end
function ps_5:Create(ps_46)
    ps_46 = ps_46 or {}
    local ps_47 = ps_46.Title or "Proton Services"
    local ps_48 = ps_46.Subtitle or "Enter your key to continue"
    local ps_49 = ps_46.OnSubmit
    local ps_50 = ps_46.OnGetKey
    local ps_51 = ps_46.LogoId or "rbxassetid://0"
    local ps_52 = ps_46.BannerId or "rbxassetid://0"
    local ps_53 = Instance.new("ScreenGui")
    -- random name so anti cheat can't match it by a fixed gui name
    ps_53.Name = "mB4xT9cVe6Hs2JdA"
    ps_53.ResetOnSpawn = false
    ps_53.IgnoreGuiInset = true
    -- max display order keeps it above every other gui
    ps_53.DisplayOrder = 2147483647
    ps_53.Parent = ps_4
    local ps_54 = Instance.new("Frame")
    ps_54.Size = UDim2.fromScale(1, 1)
    ps_54.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    ps_54.BackgroundTransparency = 1
    ps_54.Parent = ps_53
    local ps_55 = Instance.new("Frame")
    ps_55.Size = UDim2.fromScale(1, 1)
    ps_55.BackgroundTransparency = 1
    ps_55.Parent = ps_53
    local ps_56 = Instance.new("Frame")
    ps_56.Name = "Main"
    ps_56.AnchorPoint = Vector2.new(0.5, 0.5)
    ps_56.Position = UDim2.fromScale(0.5, 0.5)
    ps_56.Size = UDim2.fromOffset(340, 278)
    ps_56.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
    ps_56.BackgroundTransparency = 1
    ps_56.Parent = ps_55
    ps_7(ps_56, 14)
    ps_8(ps_56, Color3.fromRGB(60, 60, 60), 1)
    ps_56.Size = UDim2.fromOffset(340, 0)
    ps_6(ps_54, {BackgroundTransparency = 0.55}, 0.4)
    ps_6(ps_56, {Size = UDim2.fromOffset(340, 278), BackgroundTransparency = 0}, 0.4, Enum.EasingStyle.Quint)
    local ps_57 = Instance.new("Frame")
    ps_57.Name = "Banner"
    ps_57.Size = UDim2.new(1, -24, 0, 80)
    ps_57.Position = UDim2.new(0, 12, 0, 12)
    ps_57.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
    ps_57.Parent = ps_56
    ps_7(ps_57, 10)
    ps_8(ps_57, Color3.fromRGB(60, 60, 60), 1)
    local ps_58 = Instance.new("ImageLabel")
    ps_58.Size = UDim2.fromScale(1, 1)
    ps_58.BackgroundTransparency = 1
    ps_58.Image = ps_52
    ps_58.ScaleType = Enum.ScaleType.Crop
    ps_58.Parent = ps_57
    ps_7(ps_58, 10)
    local ps_59 = Instance.new("ImageButton")
    ps_59.Size = UDim2.fromOffset(32, 32)
    ps_59.Position = UDim2.new(1, -49, 0, 17)
    ps_59.BackgroundTransparency = 1
    ps_59.Image = "rbxassetid://109885526184545"
    ps_59.ImageColor3 = Color3.fromRGB(170, 170, 170)
    ps_59.ZIndex = 3
    ps_59.Parent = ps_56
    ps_59.MouseEnter:Connect(function()
        ps_6(ps_59, {ImageColor3 = Color3.fromRGB(255, 255, 255)}, 0.15)
    end)
    ps_59.MouseLeave:Connect(function()
        ps_6(ps_59, {ImageColor3 = Color3.fromRGB(170, 170, 170)}, 0.15)
    end)
    ps_59.MouseButton1Click:Connect(function()
        ps_6(ps_54, {BackgroundTransparency = 1}, 0.3, Enum.EasingStyle.Quint)
        ps_6(ps_56, {Size = UDim2.fromOffset(340, 0), BackgroundTransparency = 1}, 0.3, Enum.EasingStyle.Quint)
        task.wait(0.3)
        ps_53:Destroy()
    end)
    local ps_60 = Instance.new("ImageLabel")
    ps_60.Size = UDim2.fromOffset(28, 28)
    ps_60.Position = UDim2.new(0, 16, 0, 102)
    ps_60.BackgroundTransparency = 1
    ps_60.Image = ps_51
    ps_60.Parent = ps_56
    local ps_61 = Instance.new("TextLabel")
    ps_61.Size = UDim2.new(1, -100, 0, 28)
    ps_61.Position = UDim2.new(0, 52, 0, 102)
    ps_61.BackgroundTransparency = 1
    ps_61.Text = ps_47
    ps_61.FontFace = ps_10()
    ps_61.TextSize = 19
    ps_61.TextColor3 = Color3.fromRGB(255, 255, 255)
    ps_61.TextXAlignment = Enum.TextXAlignment.Left
    ps_61.Parent = ps_56
    local ps_62 = Instance.new("TextLabel")
    ps_62.Size = UDim2.new(1, -32, 0, 16)
    ps_62.Position = UDim2.new(0, 16, 0, 134)
    ps_62.BackgroundTransparency = 1
    ps_62.Text = ps_48
    ps_62.FontFace = ps_9()
    ps_62.TextSize = 12
    ps_62.TextColor3 = Color3.fromRGB(160, 160, 160)
    ps_62.TextXAlignment = Enum.TextXAlignment.Left
    ps_62.Parent = ps_56
    local ps_63 = Instance.new("Frame")
    ps_63.Size = UDim2.new(1, -32, 0, 38)
    ps_63.Position = UDim2.new(0, 16, 0, 158)
    ps_63.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
    ps_63.Parent = ps_56
    ps_7(ps_63, 8)
    local ps_64 = ps_8(ps_63, Color3.fromRGB(60, 60, 60), 1)
    local ps_65 = Instance.new("TextBox")
    ps_65.Size = UDim2.new(1, -24, 1, 0)
    ps_65.Position = UDim2.new(0, 12, 0, 0)
    ps_65.BackgroundTransparency = 1
    ps_65.PlaceholderText = "Paste your key here"
    ps_65.PlaceholderColor3 = Color3.fromRGB(110, 110, 110)
    ps_65.Text = ""
    ps_65.FontFace = ps_9()
    ps_65.TextSize = 13
    ps_65.TextColor3 = Color3.fromRGB(230, 230, 230)
    ps_65.TextXAlignment = Enum.TextXAlignment.Left
    ps_65.ClearTextOnFocus = false
    ps_65.Parent = ps_63
    ps_65.Focused:Connect(function()
        ps_6(ps_64, {Color = Color3.fromRGB(255, 255, 255)}, 0.2)
    end)
    ps_65.FocusLost:Connect(function()
        ps_6(ps_64, {Color = Color3.fromRGB(60, 60, 60)}, 0.2)
    end)
    local ps_66 = Instance.new("TextButton")
    ps_66.Size = UDim2.new(1, -32, 0, 38)
    ps_66.Position = UDim2.new(0, 16, 0, 204)
    ps_66.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ps_66.Text = "Submit Key"
    ps_66.FontFace = ps_10()
    ps_66.TextSize = 14
    ps_66.TextColor3 = Color3.fromRGB(15, 15, 15)
    ps_66.AutoButtonColor = false
    ps_66.Parent = ps_56
    ps_7(ps_66, 8)
    ps_66.MouseEnter:Connect(function()
        ps_6(ps_66, {BackgroundColor3 = Color3.fromRGB(220, 220, 220)}, 0.15)
    end)
    ps_66.MouseLeave:Connect(function()
        ps_6(ps_66, {BackgroundColor3 = Color3.fromRGB(255, 255, 255)}, 0.15)
    end)
    local ps_67 = Instance.new("TextButton")
    ps_67.Size = UDim2.new(1, -32, 0, 18)
    ps_67.Position = UDim2.new(0, 16, 0, 250)
    ps_67.BackgroundTransparency = 1
    ps_67.Text = ""
    ps_67.Parent = ps_56
    local ps_68 = Instance.new("ImageLabel")
    ps_68.Size = UDim2.fromOffset(14, 14)
    ps_68.AnchorPoint = Vector2.new(1, 0.5)
    ps_68.Position = UDim2.new(0.5, -70, 0.5, 0)
    ps_68.BackgroundTransparency = 1
    ps_68.Image = "rbxassetid://94503913833221"
    ps_68.ImageColor3 = Color3.fromRGB(180, 180, 180)
    ps_68.Parent = ps_67
    local ps_69 = Instance.new("TextLabel")
    ps_69.Size = UDim2.new(1, 0, 1, 0)
    ps_69.BackgroundTransparency = 1
    ps_69.Text = "Don't have a key? Get one here"
    ps_69.FontFace = ps_11()
    ps_69.TextSize = 12
    ps_69.TextColor3 = Color3.fromRGB(180, 180, 180)
    ps_69.Parent = ps_67
    local function ps_70()
        local ps_71 = math.floor(ps_69.TextBounds.X / 2)
        if ps_71 > 0 then
            ps_68.Position = UDim2.new(0.5, -ps_71 - 6, 0.5, 0)
        end
    end
    ps_69:GetPropertyChangedSignal("TextBounds"):Connect(ps_70)
    ps_70()
    local function ps_72(ps_73)
        ps_66.Text = ps_73 and "Checking..." or "Submit Key"
        ps_66.AutoButtonColor = not ps_73
    end
    ps_66.MouseButton1Click:Connect(function()
        local ps_74 = ps_65.Text
        if ps_74 == "" then
            ps_17("Please enter a key")
            return
        end
        ps_72(true)
        -- pcall so a broken key check can't error the ui
        local ps_75, ps_76 = pcall(ps_49, ps_74)
        ps_72(false)
        if ps_75 and ps_76 then
            ps_17("Key accepted")
            ps_6(ps_54, {BackgroundTransparency = 1}, 0.3, Enum.EasingStyle.Quint)
            ps_6(ps_56, {Size = UDim2.fromOffset(340, 0), BackgroundTransparency = 1}, 0.3, Enum.EasingStyle.Quint)
            task.wait(0.3)
            ps_53:Destroy()
        else
            ps_17("Invalid key, try again")
        end
    end)
    ps_67.MouseButton1Click:Connect(function()
        if ps_50 then
            local ps_77 = pcall(ps_50)
            if ps_77 then
                ps_17("Link copied to clipboard")
            else
                ps_17("Could not copy link")
            end
        end
    end)
    return ps_53
end
return ps_5
