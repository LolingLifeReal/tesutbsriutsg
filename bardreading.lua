local uiname = "Universal Exploit's UI 2022-23©"

for i, v in pairs(game:GetService("CoreGui"):GetDescendants()) do
   if v.Name == uiname then
      v:Destroy()
   end
end

lib = {}

-- framework code starts
local inputService = game:GetService("UserInputService")
local tweenService = game:GetService("TweenService")
local runService = game:GetService("RunService")
local coreGui = game:GetService("CoreGui")

local framework = {signal = loadstring(game:HttpGet("https://raw.githubusercontent.com/vozoid/ui-framework/main/signal.lua"))()}

function framework.format_table(tbl)
    if tbl then
        local oldtbl = tbl
        local newtbl = {}
        local formattedtbl = {}

        for option, v in next, oldtbl do
            newtbl[option:lower()] = v
        end

        setmetatable(formattedtbl, {
            __newindex = function(t, k, v)
                rawset(newtbl, k:lower(), v)
            end,
            __index = function(t, k, v)
                return newtbl[k:lower()]
            end
        })

        return formattedtbl
    else
        return {}
    end
end

framework = framework.format_table(framework)

framework.forcedProperties = {}

function framework.import(file)
    return loadstring(readfile(("ui-framework/modules/objects/%s.lua"):format(file)))()
end

function framework.create(object)
    local object = Instance.new(class)

    for prop, v in next, properties do
        object[prop] = v
    end

    for prop, v in next, framework.forcedProperties do
        pcall(function()
            object[prop] = v
        end)
    end
    
    return obj
end

function framework.tween(obj, info, properties, callback)
    local anim = tweenService:Create(obj, TweenInfo.new(unpack(info)), properties)
    anim:Play()



-- ends
function lib.new(key)
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TOPBAR = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local Title = Instance.new("TextLabel")
local search = Instance.new("ImageButton")
local SearchBar = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local SearchBox = Instance.new("TextBox")
local UIListLayout = Instance.new("UIListLayout")
local UIPadding = Instance.new("UIPadding")
local Frame_2 = Instance.new("Frame")
local UICorner_4 = Instance.new("UICorner")
local UIListLayout_2 = Instance.new("UIListLayout")
local TabHolder = Instance.new("Frame")
local UICorner_5 = Instance.new("UICorner")
local UIListLayout_3 = Instance.new("UIListLayout")
local UIPadding_2 = Instance.new("UIPadding")
local TABSPLASH = Instance.new("Frame")
local UICorner_6 = Instance.new("UICorner")
local UIListLayout_4 = Instance.new("UIListLayout")

-- Properties:

ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.Name = uiname

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(52, 62, 73)
Frame.Position = UDim2.new(0.322992712, 0, 0.468711674, 0)
Frame.Size = UDim2.new(0, 357, 0, 244)
Frame.Active = true
Frame.Draggable = true
UICorner.CornerRadius = UDim.new(0, 10)
UICorner.Parent = Frame

TOPBAR.Name = "TOPBAR"
TOPBAR.Parent = Frame
TOPBAR.BackgroundColor3 = Color3.fromRGB(58, 67, 80)
TOPBAR.Position = UDim2.new(0.0258127991, 0, 0.0293089673, 0)
TOPBAR.Size = UDim2.new(0, 347, 0, 29)

UICorner_2.CornerRadius = UDim.new(0, 5)
UICorner_2.Parent = TOPBAR

Title.Name = "Title"
Title.Parent = TOPBAR
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.Position = UDim2.new(0.0158501435, 0, 0, 0)
Title.Size = UDim2.new(0, 341, 0, 29)
Title.Font = Enum.Font.GothamSemibold
Title.Text = key or "lolingui"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 12.000
Title.TextXAlignment = Enum.TextXAlignment.Left

search.Name = "search"
search.Parent = TOPBAR
search.AnchorPoint = Vector2.new(0.5, 0.5)
search.BackgroundTransparency = 1.000
search.LayoutOrder = 1
search.Position = UDim2.new(0.961095154, 0, 0.5, 0)
search.Size = UDim2.new(0, 15, 0, 15)
search.ZIndex = 2
search.Image = "rbxassetid://3926305904"
search.ImageRectOffset = Vector2.new(964, 324)
search.ImageRectSize = Vector2.new(36, 36)
local toggled = false
search.MouseButton1Down:Connect(
function()
   if toggled then
      game.TweenService:Create(
      SearchBar,
      TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In),
      {Size = UDim2.new(0, 0, 0, 0)}
      ):Play()
      game.TweenService:Create(
      search,
      TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In),
      {ImageTransparency = 1}
      ):Play()
      game.TweenService:Create(
      SearchBox,
      TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In),
      {TextTransparency = 1}
      ):Play()
      wait(.1)
      SearchBar.Visible = false
      game.TweenService:Create(
      search,
      TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In),
      {ImageTransparency = 0}
      ):Play()
      search.LayoutOrder = 1
      search.Image = "rbxassetid://3926305904"
      search.ImageRectOffset = Vector2.new(964, 324)
      search.ImageRectSize = Vector2.new(36, 36)
   else
      SearchBar.Visible = true
      search.ImageTransparency = 1
      search.LayoutOrder = 5
      search.Image = "rbxassetid://3926305904"
      search.ImageRectOffset = Vector2.new(924, 724)
      search.ImageRectSize = Vector2.new(36, 36)
      game.TweenService:Create(
      SearchBar,
      TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In),
      {Size = UDim2.new(0, 347, 0, 29)}
      ):Play()
      game.TweenService:Create(
      SearchBox,
      TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In),
      {TextTransparency = 0}
      ):Play()
      wait(.1)
      game.TweenService:Create(
      search,
      TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In),
      {ImageTransparency = 0}
      ):Play()
      SearchBox:CaptureFocus()
   end
   toggled = not toggled
end
)
SearchBar.Name = "SearchBar"
SearchBar.Parent = TOPBAR
SearchBar.BackgroundColor3 = Color3.fromRGB(58, 67, 80)
SearchBar.BorderSizePixel = 0
SearchBar.Size = UDim2.new(0, 0, 0, 0)
SearchBar.Visible = false

UICorner_3.CornerRadius = UDim.new(0, 6)
UICorner_3.Parent = SearchBar

SearchBox.Name = "SearchBox"
SearchBox.Parent = SearchBar
SearchBox.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
SearchBox.BackgroundTransparency = 0.990
SearchBox.Position = UDim2.new(0.0345821343, 0, 0, 0)
SearchBox.Size = UDim2.new(0, 307, 0, 29)
SearchBox.Font = Enum.Font.Gotham
SearchBox.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
SearchBox.PlaceholderText = "Type Something"
SearchBox.Text = ""
SearchBox.TextColor3 = Color3.fromRGB(255, 255, 255)
SearchBox.TextSize = 10.000
local current_tab
SearchBox.TextXAlignment = Enum.TextXAlignment.Left
SearchBox:GetPropertyChangedSignal("Text"):Connect(
function()
   for i, v in pairs(current_tab:GetChildren()) do
      if v:IsA "TextButton" then
         if string.find(string.lower(v.Name), string.lower(SearchBox.Text)) then
            v.Visible = true
         else
            if SearchBox.Text == "" then
               v.Visible = true
            else
               v.Visible = false
            end
         end
      end
   end
end
)
UIListLayout.Parent = Frame
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 4)

UIPadding.Parent = Frame
UIPadding.PaddingTop = UDim.new(0, 5)

Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = Color3.fromRGB(74, 90, 105)
Frame_2.BackgroundTransparency = 1.000
Frame_2.Position = UDim2.new(0.0193905812, 0, 0.13636364, 0)
Frame_2.Size = UDim2.new(0, 347, 0, 202)

UICorner_4.CornerRadius = UDim.new(0, 5)
UICorner_4.Parent = Frame_2

UIListLayout_2.Parent = Frame_2
UIListLayout_2.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_2.Padding = UDim.new(0, 4)

TabHolder.Name = "TabHolder"
TabHolder.Parent = Frame_2
TabHolder.BackgroundColor3 = Color3.fromRGB(58, 67, 80)
TabHolder.Position = UDim2.new(-0.0144092217, 0, 0, 0)
TabHolder.Size = UDim2.new(0, 112, 0, 201)

UICorner_5.CornerRadius = UDim.new(0, 5)
UICorner_5.Parent = TabHolder

UIListLayout_3.Parent = TabHolder
UIListLayout_3.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_3.Padding = UDim.new(0, 4)

UIPadding_2.Parent = TabHolder
UIPadding_2.PaddingTop = UDim.new(0, 5)

TABSPLASH.Name = "TABSPLASH"
TABSPLASH.Parent = Frame_2
TABSPLASH.BackgroundColor3 = Color3.fromRGB(58, 67, 80)
TABSPLASH.Position = UDim2.new(0.293948144, 0, 0, 0)
TABSPLASH.Size = UDim2.new(0, 231, 0, 201)

UICorner_6.CornerRadius = UDim.new(0, 5)
UICorner_6.Parent = TABSPLASH

UIListLayout_4.Parent = TABSPLASH
UIListLayout_4.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_4.Padding = UDim.new(0, 4)
local tabhandler = {}
local tabcount = 0

tabhandler.tab = function(key)
tabcount = tabcount + 1
local Tab = Instance.new("ScrollingFrame")
local TabUIListLayout = Instance.new("UIListLayout")
local UIPadding = Instance.new("UIPadding")
local UICorner = Instance.new("UICorner")

-- Properties:

Tab.Name = "Tab"
Tab.Parent = TABSPLASH
Tab.Active = true
Tab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Tab.BackgroundTransparency = 1.000
Tab.Position = UDim2.new(0.334293962, 0, 0, 0)
Tab.Size = UDim2.new(0, 231, 0, 201)
Tab.CanvasSize = UDim2.new(0, 0, 0, 0)
Tab.ScrollBarThickness = 0
Tab.Visible = false
Tab.AutomaticCanvasSize = Enum.AutomaticSize.Y

TabUIListLayout.Parent = Tab
TabUIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
TabUIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
TabUIListLayout.Padding = UDim.new(0, 4)

UIPadding.Parent = Tab
UIPadding.PaddingTop = UDim.new(0, 5)
UIPadding.PaddingBottom = UDim.new(0, 10)

UICorner.CornerRadius = UDim.new(0, 5)
UICorner.Parent = Tab

local TABBUTTON = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local Frame = Instance.new("Frame")
local UIGradient = Instance.new("UIGradient")

-- Properties:

TABBUTTON.Name = "TABBUTTON"
TABBUTTON.Parent = TabHolder
TABBUTTON.BackgroundColor3 = Color3.fromRGB(52, 62, 73)
TABBUTTON.Position = UDim2.new(0.0491071418, 0, 0, 0)
TABBUTTON.Size = UDim2.new(0, 101, 0, 23)
TABBUTTON.AutoButtonColor = false
TABBUTTON.Font = Enum.Font.GothamSemibold
TABBUTTON.Text = key or "aimbot"
TABBUTTON.TextColor3 = Color3.fromRGB(252, 252, 252)
TABBUTTON.TextSize = 11.000

UICorner.CornerRadius = UDim.new(0, 5)
UICorner.Parent = TABBUTTON

Frame.Parent = TABBUTTON
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0, 0, 0.879000008, 0)
Frame.Size = UDim2.new(0, 100, 0, 2)
Frame.Transparency = 1

UIGradient.Color =
ColorSequence.new {
   ColorSequenceKeypoint.new(0.00, Color3.fromRGB(52, 62, 73)),
   ColorSequenceKeypoint.new(0.50, Color3.fromRGB(94, 255, 161)),
   ColorSequenceKeypoint.new(1.00, Color3.fromRGB(52, 62, 73))
}
UIGradient.Parent = Frame
if tabcount == 1 then
   for i, v in pairs(TABSPLASH:GetChildren()) do
      if v:IsA "ScrollingFrame" then
         v.Visible = false
      end
   end
   Tab.Visible = true
   game.TweenService:Create(
   Frame,
   TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.In),
   {Transparency = 0}
   ):Play()
   current_tab = Tab
end
TABBUTTON.MouseButton1Down:Connect(
function()
   current_tab = Tab
   for i, v in pairs(TabHolder:GetChildren()) do
      if v:IsA "TextButton" then
         game.TweenService:Create(
         v.Frame,
         TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In),
         {Transparency = 1}
         ):Play()
      end
   end
   for i, v in pairs(TABSPLASH:GetChildren()) do
      if v:IsA "Frame" then
         v.Visible = false
      end
   end
   Tab.Visible = true
   game.TweenService:Create(
   Frame,
   TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In),
   {Transparency = 0}
   ):Play()
end
)
local assets = {}
assets.dropdown = function(key, list, help, cb)
local DROPDOWN = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local UIPadding = Instance.new("UIPadding")
local Help = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local info = Instance.new("ImageButton")

-- Properties:

DROPDOWN.Name = key
DROPDOWN.Parent = Tab
DROPDOWN.BackgroundColor3 = Color3.fromRGB(52, 62, 73)
DROPDOWN.Position = UDim2.new(0.0151515156, 0, 0, 0)
DROPDOWN.Size = UDim2.new(0, 224, 0, 27)
DROPDOWN.AutoButtonColor = false
DROPDOWN.Font = Enum.Font.Gotham
DROPDOWN.Text = key
DROPDOWN.TextColor3 = Color3.fromRGB(252, 252, 252)
DROPDOWN.TextSize = 11.000
DROPDOWN.TextXAlignment = Enum.TextXAlignment.Left

UICorner.CornerRadius = UDim.new(0, 5)
UICorner.Parent = DROPDOWN

UIPadding.Parent = DROPDOWN
UIPadding.PaddingLeft = UDim.new(0, 7)

Help.Name = "Help"
Help.Parent = DROPDOWN
Help.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Help.BackgroundTransparency = 0.950
Help.Position = UDim2.new(0.931999981, 0, 0.216999993, 0)
Help.Size = UDim2.new(0, 12, 0, 12)

UICorner_2.CornerRadius = UDim.new(0, 3)
UICorner_2.Parent = Help

info.Name = "info"
info.Parent = Help
info.AnchorPoint = Vector2.new(0.5, 0.5)
info.BackgroundTransparency = 1.000
info.Position = UDim2.new(0.5, 0, 0.5, 0)
info.Size = UDim2.new(0, 10, 0, 10)
info.ZIndex = 2
info.Image = "rbxassetid://3926305904"
info.ImageRectOffset = Vector2.new(524, 444)
info.ImageRectSize = Vector2.new(36, 36)
local properties = {}
DROPDOWN.MouseButton1Down:Connect(
function()
   for i, v in pairs(properties) do
      v.Visible = true
      game.TweenService:Create(
      v,
      TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In),
      {Size = UDim2.new(0, 214, 0, 27)}
      ):Play()
      Tab.CanvasPosition = Vector2.new(0, TabUIListLayout.AbsoluteContentSize.Y)
      wait(.1)
   end
end
)
for i, v in pairs(list) do
   local shit = Instance.new("TextButton")
   local UICorner = Instance.new("UICorner")
   local UIPadding = Instance.new("UIPadding")
   shit.Name = "DROPDOWN"
   shit.Parent = Tab
   shit.BackgroundColor3 = Color3.fromRGB(68, 81, 95)
   shit.Position = UDim2.new(0.0151515156, 0, 0, 0)
   shit.Size = UDim2.new(0, 0, 0, 0)
   shit.AutoButtonColor = false
   shit.Font = Enum.Font.Gotham
   shit.Text = v
   shit.TextColor3 = Color3.fromRGB(252, 252, 252)
   shit.TextSize = 11.000
   shit.TextXAlignment = Enum.TextXAlignment.Left
   shit.Visible = false
   table.insert(properties, shit)
   UICorner.CornerRadius = UDim.new(0, 5)
   UICorner.Parent = shit

   UIPadding.Parent = shit
   UIPadding.PaddingLeft = UDim.new(0, 7)
   shit.MouseButton1Down:Connect(
   function()
      cb(v)
      DROPDOWN.Text = key .. " - " .. v
      for i, v in pairs(properties) do
         game.TweenService:Create(
         v,
         TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In),
         {Size = UDim2.new(0, 0, 0, 0)}
         ):Play()
         wait(.1)
         v.Visible = false
      end
   end
   )
end
local TextLabel = Instance.new("TextLabel")
local UIPadding = Instance.new("UIPadding")
local UICorner = Instance.new("UICorner")
local clear = Instance.new("ImageButton")

TextLabel.Parent = DROPDOWN
TextLabel.BackgroundColor3 = Color3.fromRGB(38, 46, 54)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(-0.0322580636, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 224, 0, 27)
TextLabel.ZIndex = 3
TextLabel.Font = Enum.Font.Gotham
TextLabel.Text = help or "send"
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.TextSize = 10.000
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.Visible = false
TextLabel.TextTransparency = 1
TextLabel.Transparency = 1

UIPadding.Parent = TextLabel
UIPadding.PaddingLeft = UDim.new(0, 7)

UICorner.CornerRadius = UDim.new(0, 5)
UICorner.Parent = TextLabel

clear.Name = "clear"
clear.Parent = TextLabel
clear.AnchorPoint = Vector2.new(0.5, 0.5)
clear.BackgroundTransparency = 1.000
clear.LayoutOrder = 5
clear.Position = UDim2.new(0.947004616, 0, 0.5, 0)
clear.Size = UDim2.new(0, 15, 0, 15)
clear.ZIndex = 3
clear.Image = "rbxassetid://3926305904"
clear.ImageRectOffset = Vector2.new(924, 724)
clear.ImageRectSize = Vector2.new(36, 36)
clear.ImageTransparency = 1
clear.MouseButton1Down:Connect(
function()
   game.TweenService:Create(
   TextLabel,
   TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In),
   {Transparency = 1}
   ):Play()
   game.TweenService:Create(
   TextLabel,
   TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In),
   {TextTransparency = 1}
   ):Play()
   game.TweenService:Create(
   clear,
   TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In),
   {ImageTransparency = 1}
   ):Play()
   wait(.1)
   TextLabel.Visible = false
end
)
info.MouseButton1Down:Connect(
function()
   TextLabel.Visible = true
   game.TweenService:Create(
   TextLabel,
   TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In),
   {Transparency = 0}
   ):Play()
   game.TweenService:Create(
   TextLabel,
   TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In),
   {TextTransparency = 0}
   ):Play()
   game.TweenService:Create(
   clear,
   TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In),
   {ImageTransparency = 0}
   ):Play()
end
)
local Slider = Instance.new("TextButton")
-- Properties:

Slider.Name = key
Slider.Parent = Tab
Slider.BackgroundColor3 = Color3.fromRGB(52, 62, 73)
Slider.Position = UDim2.new(0.281385273, 0, 0, 0)
Slider.Size = UDim2.new(0, 0, 0, 5)
Slider.AutoButtonColor = false
Slider.BorderSizePixel = 0
Slider.Font = Enum.Font.Gotham
Slider.Text = ""
Slider.TextColor3 = Color3.fromRGB(252, 252, 252)
Slider.TextSize = 11.000
Slider.TextXAlignment = Enum.TextXAlignment.Left
end
assets.label = function(key, allign)
local Label = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local UIPadding = Instance.new("UIPadding")

-- Properties:

Label.Name = key
Label.Parent = Tab
Label.BackgroundColor3 = Color3.fromRGB(52, 62, 73)
Label.Position = UDim2.new(0.281385273, 0, 0, 0)
Label.Size = UDim2.new(0, 224, 0, 27)
Label.AutoButtonColor = false
Label.Font = Enum.Font.Gotham
Label.Text = key or "aimbot"
Label.TextColor3 = Color3.fromRGB(252, 252, 252)
Label.TextSize = 11.000
Label.TextXAlignment = Enum.TextXAlignment[allign or "Left"]

UICorner.CornerRadius = UDim.new(0, 5)
UICorner.Parent = Label

UIPadding.Parent = Label
UIPadding.PaddingLeft = UDim.new(0, 7)
end
assets.toggle = function(key, state, help, cb)
local Toggle = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local UIPadding = Instance.new("UIPadding")
local Checkurs = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local check = Instance.new("ImageButton")
local Help = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local info = Instance.new("ImageButton")
local toggled = state or false
-- Properties:

Toggle.Name = key
Toggle.Parent = Tab
Toggle.BackgroundColor3 = Color3.fromRGB(52, 62, 73)
Toggle.Position = UDim2.new(0.212121218, 0, -0.0100755664, 0)
Toggle.Size = UDim2.new(0, 224, 0, 27)
Toggle.AutoButtonColor = false
Toggle.Font = Enum.Font.Gotham
Toggle.Text = key or "aimbot"
Toggle.TextColor3 = Color3.fromRGB(252, 252, 252)
Toggle.TextSize = 11.000
Toggle.TextXAlignment = Enum.TextXAlignment.Left
Toggle.MouseButton1Down:Connect(
function()
if toggled then
game.TweenService:Create(
check,
TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In),
{ImageTransparency = 1}
):Play()
else
game.TweenService:Create(
check,
TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In),
{ImageTransparency = 0}
):Play()
end
toggled = not toggled
cb(toggled)
end
)
UICorner.CornerRadius = UDim.new(0, 5)
UICorner.Parent = Toggle

UIPadding.Parent = Toggle
UIPadding.PaddingLeft = UDim.new(0, 7)

Checkurs.Name = "Checkurs"
Checkurs.Parent = Toggle
Checkurs.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Checkurs.BackgroundTransparency = 0.950
Checkurs.Position = UDim2.new(0.86175108, 0, 0.217391312, 0)
Checkurs.Size = UDim2.new(0, 12, 0, 12)

UICorner_2.CornerRadius = UDim.new(0, 3)
UICorner_2.Parent = Checkurs

check.Name = "check"
check.Parent = Checkurs
check.AnchorPoint = Vector2.new(0.5, 0.5)
check.BackgroundTransparency = 1.000
check.LayoutOrder = 5
check.Position = UDim2.new(0.5, 0, 0.5, 0)
check.Size = UDim2.new(0, 10, 0, 10)
check.ZIndex = 2
check.Image = "rbxassetid://3926305904"
check.ImageRectOffset = Vector2.new(312, 4)
check.ImageRectSize = Vector2.new(24, 24)
check.ImageTransparency = 1
check.MouseButton1Down:Connect(
function()
if toggled then
game.TweenService:Create(
check,
TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In),
{ImageTransparency = 1}
):Play()
else
game.TweenService:Create(
check,
TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In),
{ImageTransparency = 0}
):Play()
end
toggled = not toggled
spawn(cb(toggled))
end
)
if state then
check.ImageTransparency = 0
end
Help.Name = "Help"
Help.Parent = Toggle
Help.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Help.BackgroundTransparency = 0.950
Help.Position = UDim2.new(0.931999981, 0, 0.216999993, 0)
Help.Size = UDim2.new(0, 12, 0, 12)

UICorner_3.CornerRadius = UDim.new(0, 3)
UICorner_3.Parent = Help

info.Name = "info"
info.Parent = Help
info.AnchorPoint = Vector2.new(0.5, 0.5)
info.BackgroundTransparency = 1.000
info.Position = UDim2.new(0.5, 0, 0.5, 0)
info.Size = UDim2.new(0, 10, 0, 10)
info.ZIndex = 2
info.Image = "rbxassetid://3926305904"
info.ImageRectOffset = Vector2.new(524, 444)
info.ImageRectSize = Vector2.new(36, 36)

local TextLabel = Instance.new("TextLabel")
local UIPadding = Instance.new("UIPadding")
local UICorner = Instance.new("UICorner")
local clear = Instance.new("ImageButton")

TextLabel.Parent = Toggle
TextLabel.BackgroundColor3 = Color3.fromRGB(38, 46, 54)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(-0.0322580636, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 224, 0, 27)
TextLabel.ZIndex = 3
TextLabel.Font = Enum.Font.Gotham
TextLabel.Text = help or "send"
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.TextSize = 10.000
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.Visible = false
TextLabel.TextTransparency = 1
TextLabel.Transparency = 1

UIPadding.Parent = TextLabel
UIPadding.PaddingLeft = UDim.new(0, 7)

UICorner.CornerRadius = UDim.new(0, 5)
UICorner.Parent = TextLabel

clear.Name = "clear"
clear.Parent = TextLabel
clear.AnchorPoint = Vector2.new(0.5, 0.5)
clear.BackgroundTransparency = 1.000
clear.LayoutOrder = 5
clear.Position = UDim2.new(0.947004616, 0, 0.5, 0)
clear.Size = UDim2.new(0, 15, 0, 15)
clear.ZIndex = 3
clear.Image = "rbxassetid://3926305904"
clear.ImageRectOffset = Vector2.new(924, 724)
clear.ImageRectSize = Vector2.new(36, 36)
clear.ImageTransparency = 1
clear.MouseButton1Down:Connect(
function()
game.TweenService:Create(
TextLabel,
TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In),
{Transparency = 1}
):Play()
game.TweenService:Create(
TextLabel,
TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In),
{TextTransparency = 1}
):Play()
game.TweenService:Create(
clear,
TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In),
{ImageTransparency = 1}
):Play()
wait(.1)
TextLabel.Visible = false
end
)
info.MouseButton1Down:Connect(
function()
TextLabel.Visible = true
game.TweenService:Create(
TextLabel,
TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In),
{Transparency = 0}
):Play()
game.TweenService:Create(
TextLabel,
TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In),
{TextTransparency = 0}
):Play()
game.TweenService:Create(
clear,
TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In),
{ImageTransparency = 0}
):Play()
end
)
end
assets.spacer = function()
local Slider = Instance.new("TextButton")
-- Properties:

Slider.Name = key
Slider.Parent = Tab
Slider.BackgroundColor3 = Color3.fromRGB(52, 62, 73)
Slider.Position = UDim2.new(0.281385273, 0, 0, 0)
Slider.Size = UDim2.new(0, 0, 0, 5)
Slider.AutoButtonColor = false
Slider.BorderSizePixel = 0
Slider.Font = Enum.Font.Gotham
Slider.Text = ""
Slider.TextColor3 = Color3.fromRGB(252, 252, 252)
Slider.TextSize = 11.000
Slider.TextXAlignment = Enum.TextXAlignment.Left
end
assets.slider = function(key, min, max, default, help, cb)
local Slider = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local UIPadding = Instance.new("UIPadding")
local Help = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local info = Instance.new("ImageButton")
local remove = Instance.new("ImageButton")
local add = Instance.new("ImageButton")
local SlidingButton = Instance.new("TextButton")
local SlidingFrame = Instance.new("Frame")

-- Properties:

Slider.Name = key
Slider.Parent = Tab
Slider.BackgroundColor3 = Color3.fromRGB(52, 62, 73)
Slider.Position = UDim2.new(0.281385273, 0, 0, 0)
Slider.Size = UDim2.new(0, 224, 0, 27)
Slider.AutoButtonColor = false
Slider.Font = Enum.Font.Gotham
Slider.Text = key or "aimbot"
Slider.TextColor3 = Color3.fromRGB(252, 252, 252)
Slider.TextSize = 11.000
Slider.TextXAlignment = Enum.TextXAlignment.Left

UICorner.CornerRadius = UDim.new(0, 5)
UICorner.Parent = Slider

UIPadding.Parent = Slider
UIPadding.PaddingLeft = UDim.new(0, 7)

Help.Name = "Help"
Help.Parent = Slider
Help.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Help.BackgroundTransparency = 0.950
Help.Position = UDim2.new(0.931999981, 0, 0.268146445, 0)
Help.Size = UDim2.new(0, 12, 0, 12)

UICorner_2.CornerRadius = UDim.new(0, 3)
UICorner_2.Parent = Help

info.Name = "info"
info.Parent = Help
info.AnchorPoint = Vector2.new(0.5, 0.5)
info.BackgroundTransparency = 1.000
info.Position = UDim2.new(0.5, 0, 0.5, 0)
info.Size = UDim2.new(0, 10, 0, 10)
info.ZIndex = 2
info.Image = "rbxassetid://3926305904"
info.ImageRectOffset = Vector2.new(524, 444)
info.ImageRectSize = Vector2.new(36, 36)

remove.Name = "remove"
remove.Parent = Slider
remove.AnchorPoint = Vector2.new(0.5, 0.5)
remove.BackgroundTransparency = 1.000
remove.LayoutOrder = 4
remove.Position = UDim2.new(0.503474653, 0, 0.497000009, 0)
remove.Size = UDim2.new(0, 14, 0, 14)
remove.ZIndex = 2
remove.Image = "rbxassetid://3926307971"
remove.ImageRectOffset = Vector2.new(884, 284)
remove.ImageRectSize = Vector2.new(36, 36)

add.Name = "add"
add.Parent = remove
add.AnchorPoint = Vector2.new(0.5, 0.5)
add.BackgroundTransparency = 1.000
add.LayoutOrder = 1
add.Position = UDim2.new(6.58928537, 0, 0.498146445, 0)
add.Size = UDim2.new(0, 14, 0, 14)
add.ZIndex = 2
add.Image = "rbxassetid://3926307971"
add.ImageRectOffset = Vector2.new(324, 364)
add.ImageRectSize = Vector2.new(36, 36)
local replay = Instance.new("ImageButton")

-- Properties:

replay.Name = "replay"
replay.Parent = Slider
replay.AnchorPoint = Vector2.new(0.5, 0.5)
replay.BackgroundTransparency = 1.000
replay.LayoutOrder = 4
replay.Position = UDim2.new(0.407834113, 0, 0.5, 0)
replay.Size = UDim2.new(0, 14, 0, 14)
replay.ZIndex = 2
replay.Image = "rbxassetid://3926307971"
replay.ImageRectOffset = Vector2.new(244, 524)
replay.ImageRectSize = Vector2.new(36, 36)
SlidingButton.Name = "SlidingButton"
SlidingButton.Parent = Slider
SlidingButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SlidingButton.BackgroundTransparency = 0.950
SlidingButton.BorderSizePixel = 0
SlidingButton.Position = UDim2.new(0.553134859, 0, 0.291074395, 0)
SlidingButton.Size = UDim2.new(0, 66, 0, 11)
SlidingButton.AutoButtonColor = false
SlidingButton.Font = Enum.Font.SourceSans
SlidingButton.Text = ""
SlidingButton.TextColor3 = Color3.fromRGB(0, 0, 0)
SlidingButton.TextSize = 14.000
local UICorner2 = Instance.new("UICorner")
UICorner2.CornerRadius = UDim.new(0, 5)
UICorner2.Parent = SlidingButton
local UICorner3 = Instance.new("UICorner")
UICorner3.CornerRadius = UDim.new(0, 5)
UICorner3.Parent = SlidingFrame
SlidingFrame.Name = "SlidingFrame"
SlidingFrame.Parent = SlidingButton
SlidingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SlidingFrame.BorderSizePixel = 0
SlidingFrame.Size = UDim2.new(0, 33, 0, 11)
local slider = framework.sizeslider(SlidingButton, SlidingFrame, min, max, 0.05)
local current_value = default
Slider.Text = (key or "aimbot") .. ": " .. default .. "/" .. max
slider:set(default)
slider.Updated:connect(
function(value)
cb(value)
current_value = value
Slider.Text = (key or "aimbot") .. ": " .. value .. "/" .. max
end
)
add.MouseButton1Down:Connect(
function()
slider:set(current_value + max / 5)
end
)

replay.MouseButton1Down:Connect(
function()
game.TweenService:Create(
replay,
TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In),
{ImageTransparency = 0.3}
):Play()
game.TweenService:Create(
replay,
TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In),
{Rotation = -90}
):Play()
wait(.1)
slider:set(default)
game.TweenService:Create(
replay,
TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In),
{ImageTransparency = 0}
):Play()
game.TweenService:Create(
replay,
TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In),
{Rotation = -170}
):Play()
wait(0.1)
game.TweenService:Create(
replay,
TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In),
{Rotation = -360}
):Play()
wait(0.2)
replay.Rotation = 0
end
)
remove.MouseButton1Down:Connect(
function()
slider:set(current_value - max / 5)
end
)
local TextLabel = Instance.new("TextLabel")
local UIPadding = Instance.new("UIPadding")
local UICorner = Instance.new("UICorner")
local clear = Instance.new("ImageButton")

TextLabel.Parent = Slider
TextLabel.BackgroundColor3 = Color3.fromRGB(38, 46, 54)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(-0.0322580636, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 224, 0, 27)
TextLabel.ZIndex = 3
TextLabel.Font = Enum.Font.Gotham
TextLabel.Text = help or "send"
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.TextSize = 10.000
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.Visible = false
TextLabel.TextTransparency = 1
TextLabel.Transparency = 1

UIPadding.Parent = TextLabel
UIPadding.PaddingLeft = UDim.new(0, 7)

UICorner.CornerRadius = UDim.new(0, 5)
UICorner.Parent = TextLabel

clear.Name = "clear"
clear.Parent = TextLabel
clear.AnchorPoint = Vector2.new(0.5, 0.5)
clear.BackgroundTransparency = 1.000
clear.LayoutOrder = 5
clear.Position = UDim2.new(0.947004616, 0, 0.5, 0)
clear.Size = UDim2.new(0, 15, 0, 15)
clear.ZIndex = 3
clear.Image = "rbxassetid://3926305904"
clear.ImageRectOffset = Vector2.new(924, 724)
clear.ImageRectSize = Vector2.new(36, 36)
clear.ImageTransparency = 1
clear.MouseButton1Down:Connect(
function()
game.TweenService:Create(
TextLabel,
TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In),
{Transparency = 1}
):Play()
game.TweenService:Create(
TextLabel,
TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In),
{TextTransparency = 1}
):Play()
game.TweenService:Create(
clear,
TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In),
{ImageTransparency = 1}
):Play()
wait(.1)
TextLabel.Visible = false
end
)
info.MouseButton1Down:Connect(
function()
TextLabel.Visible = true
game.TweenService:Create(
TextLabel,
TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In),
{Transparency = 0}
):Play()
game.TweenService:Create(
TextLabel,
TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In),
{TextTransparency = 0}
):Play()
game.TweenService:Create(
clear,
TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In),
{ImageTransparency = 0}
):Play()
end
)
end
assets.button = function(key, sender, help, cb)
local Button = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local UIPadding = Instance.new("UIPadding")
local Help = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local info = Instance.new("ImageButton")
local ClickIdentifier = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local mouse = Instance.new("ImageButton")
local Label = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local UIPadding_2 = Instance.new("UIPadding")

-- Properties:

Button.Name = key
Button.Parent = Tab
Button.BackgroundColor3 = Color3.fromRGB(52, 62, 73)
Button.Position = UDim2.new(0.0151515156, 0, 0, 0)
Button.Size = UDim2.new(0, 224, 0, 27)
Button.AutoButtonColor = false
Button.Font = Enum.Font.Gotham
Button.Text = key or "aimbot"
Button.TextColor3 = Color3.fromRGB(252, 252, 252)
Button.TextSize = 11.000
Button.TextXAlignment = Enum.TextXAlignment.Left

UICorner.CornerRadius = UDim.new(0, 5)
UICorner.Parent = Button

UIPadding.Parent = Button
UIPadding.PaddingLeft = UDim.new(0, 7)

Help.Name = "Help"
Help.Parent = Button
Help.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Help.BackgroundTransparency = 0.950
Help.Position = UDim2.new(0.931999981, 0, 0.216999993, 0)
Help.Size = UDim2.new(0, 12, 0, 12)

UICorner_2.CornerRadius = UDim.new(0, 3)
UICorner_2.Parent = Help

info.Name = "info"
info.Parent = Help
info.AnchorPoint = Vector2.new(0.5, 0.5)
info.BackgroundTransparency = 1.000
info.Position = UDim2.new(0.5, 0, 0.5, 0)
info.Size = UDim2.new(0, 10, 0, 10)
info.ZIndex = 2
info.Image = "rbxassetid://3926305904"
info.ImageRectOffset = Vector2.new(524, 444)
info.ImageRectSize = Vector2.new(36, 36)

ClickIdentifier.Name = "ClickIdentifier"
ClickIdentifier.Parent = Button
ClickIdentifier.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ClickIdentifier.BackgroundTransparency = 0.950
ClickIdentifier.Position = UDim2.new(0.86175108, 0, 0.217391312, 0)
ClickIdentifier.Size = UDim2.new(0, 12, 0, 12)

UICorner_3.CornerRadius = UDim.new(0, 3)
UICorner_3.Parent = ClickIdentifier

mouse.Name = "mouse"
mouse.Parent = ClickIdentifier
mouse.AnchorPoint = Vector2.new(0.5, 0.5)
mouse.BackgroundTransparency = 1.000
mouse.Position = UDim2.new(0.5, 0, 0.5, 0)
mouse.Size = UDim2.new(0, 10, 0, 10)
mouse.ZIndex = 2
mouse.Image = "rbxassetid://3926305904"
mouse.ImageRectOffset = Vector2.new(204, 964)
mouse.ImageRectSize = Vector2.new(36, 36)

Label.Name = "Label"
Label.Parent = Button
Label.BackgroundColor3 = Color3.fromRGB(58, 67, 80)
Label.Position = UDim2.new(0.548666418, 0, 0.217391402, 0)
Label.Size = UDim2.new(0, 61, 0, 14)
Label.AutoButtonColor = true
Label.Font = Enum.Font.Gotham
Label.Text = sender or "go"
Label.TextColor3 = Color3.fromRGB(252, 252, 252)
Label.TextSize = 9.000
Label.MouseButton1Down:Connect(
function()
spawn(cb)
end
)
UICorner_4.CornerRadius = UDim.new(0, 1)
UICorner_4.Parent = Label

UIPadding_2.Parent = Label
UIPadding_2.PaddingLeft = UDim.new(0, 7)

local TextLabel = Instance.new("TextLabel")
local UIPadding = Instance.new("UIPadding")
local UICorner = Instance.new("UICorner")
local clear = Instance.new("ImageButton")

TextLabel.Parent = Button
TextLabel.BackgroundColor3 = Color3.fromRGB(38, 46, 54)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(-0.0322580636, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 224, 0, 27)
TextLabel.ZIndex = 3
TextLabel.Font = Enum.Font.Gotham
TextLabel.Text = help or "send"
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.TextSize = 10.000
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.Visible = false
TextLabel.TextTransparency = 1
TextLabel.Transparency = 1

UIPadding.Parent = TextLabel
UIPadding.PaddingLeft = UDim.new(0, 7)

UICorner.CornerRadius = UDim.new(0, 5)
UICorner.Parent = TextLabel

clear.Name = "clear"
clear.Parent = TextLabel
clear.AnchorPoint = Vector2.new(0.5, 0.5)
clear.BackgroundTransparency = 1.000
clear.LayoutOrder = 5
clear.Position = UDim2.new(0.947004616, 0, 0.5, 0)
clear.Size = UDim2.new(0, 15, 0, 15)
clear.ZIndex = 3
clear.Image = "rbxassetid://3926305904"
clear.ImageRectOffset = Vector2.new(924, 724)
clear.ImageRectSize = Vector2.new(36, 36)
clear.ImageTransparency = 1
clear.MouseButton1Down:Connect(
function()
game.TweenService:Create(
TextLabel,
TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In),
{Transparency = 1}
):Play()
game.TweenService:Create(
TextLabel,
TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In),
{TextTransparency = 1}
):Play()
game.TweenService:Create(
clear,
TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In),
{ImageTransparency = 1}
):Play()
wait(.1)
TextLabel.Visible = false
end
)
info.MouseButton1Down:Connect(
function()
TextLabel.Visible = true
game.TweenService:Create(
TextLabel,
TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In),
{Transparency = 0}
):Play()
game.TweenService:Create(
TextLabel,
TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In),
{TextTransparency = 0}
):Play()
game.TweenService:Create(
clear,
TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In),
{ImageTransparency = 0}
):Play()
end
)
end
return assets
end
return tabhandler
end

-- UI

local ui = lib.new("Universal Exploit's ER:LC")
ui = ui.tab("Autonomy")

local autobuy = ui

-- functions
local autoRobs = {atmAutoRob = false, lockpick = false}

function atmAuto()
while autoRobs.atmAutoRob == true and wait() do
for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.GameMenus.ATM.Hacking:GetDescendants()) do
if
v.ClassName == "TextLabel" and
v.Text == game:GetService("Players").LocalPlayer.PlayerGui.GameMenus.ATM.Hacking.SelectingCode.Text
then
if v.TextColor3 == Color3.new(0, 0, 0) then
print("Found")
mouse1click()
-- Add a delay here later
end
end
end
end
end

function autoLock()
while autoRobs.lockpick == true and wait() do
for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.GameMenus.Lockpick.Pick:GetDescendants()) do
v.Size = UDim2.new(1, 0, 1, 300)
print(v)
end
end
end

-- UI

autobuy.dropdown(
"Item",
{"Lock Pick", "RFID Card"},
"This Will Purchase Selected Item!",
function(item)
game:GetService("ReplicatedStorage").FE.BuyGear:InvokeServer(item)
end
)

-- autobuy.spacer()

autobuy.toggle(
"ATM Auto-Rob",
false,
"Keep your mouse over the atm and this will rob it for you",
function(state)
if state == false then
autoRobs.atmAutoRob = false
atmAuto()
elseif state == true then
autoRobs.atmAutoRob = true
atmAuto()
end
end
)

autobuy.toggle(
"Bigger Picklock",
false,
"This will make the picklocks bigger",
function(state)
if state == false then
autoRobs.lockpick = false
autoLock()
elseif state == true then
autoRobs.lockpick = true
autoLock()
end
end
)

autobuy.button(
"Buy Lockpick",
"Go!",
"This will buy the selected item",
function()
local pos = game.Players.LocalPlayer.Character.HumanoidRootPart
local myass = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
wait(0.5)
pos.CFrame = CFrame.new(-437, 26, -709)
wait(0.4)
game:GetService("ReplicatedStorage").FE.BuyGear:InvokeServer("Lockpick")
pos.CFrame = myass
end
)
autobuy.button(
"Buy RFID",
"Go!",
"This will buy the selected item",
function()
local pos = game.Players.LocalPlayer.Character.HumanoidRootPart
local myass = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
wait(0.5)
pos.CFrame = CFrame.new(-437, 26, -709)
wait(0.4)
game:GetService("ReplicatedStorage").FE.BuyGear:InvokeServer("RFID Disruptor")
pos.CFrame = myass
end
)

--autobuy.toggle("Nigga Toggle", true, "kill all", print)
-- autobuy.spacer()
-- autobuy.toggle("test", false, "kill all", print)
-- autobuy.label("other stuff", "Center")
-- autobuy.label("other label", "Left")
-- autobuy.slider("FOV", 10, 100, 50, "changes the field of view", print)
--autobuy.dropdown("hitpart", {"head", "root"}, "part u wanna aim towards", print)


local a = lib.new('test')
a = a.tab('nigga')
a.button('test', 'send', 'kill all', print)
a.toggle('test', true, 'kill all', print)
a.toggle('test', false, 'kill all', print)
a.label('other stuff', "Center")
a.label('other label', "Left")
a.slider('FOV', 10, 100, 50, 'changes the field of view', print)
a.keybind('KILL ALL', 'E', 'KILLS EVERYONE IN SERVER', print)
a.spacer()
-- a.spacer()
