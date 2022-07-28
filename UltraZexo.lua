do
    if game:GetService("CoreGui"):FindFirstChild("Zexo") then
        game:GetService("CoreGui").FindFirstChild("Zexo"):Destroy()
    end
end

_G.Color = _G.ColorNew or Color3.fromRGB(0,255,0) 

local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local tweenService = game:GetService("TweenService")

function createTween(Object,setup,settings)
	local style = (settings.Style or Enum.EasingStyle.Sine);
	local direction = (settings.Direction or Enum.EasingDirection.InOut);
	local length = (settings.TIME or 1);
	local repeatcount = (settings.repeatLimit or 0);
	local reverse = (settings.IsReversed or false);
	local dt = (settings.delay or 0);
	
	local tween = TweenInfo.new(
		length, style, direction, repeatcount, reverse, dt
	);
	
	local tweenService = game:GetService("TweenService");
	local Anim = tweenService:Create(Object,tween,setup);
	Anim:Play();
	return Anim;
end;

local ZexoLib = {}

function ZexoLib:AddIntro(text2)
        local BlueXLoader = Instance.new("ScreenGui")
        local Loader = Instance.new("Frame")
        local UICorner = Instance.new("UICorner")
        local Menu = Instance.new("Frame")
        local UICorner_2 = Instance.new("UICorner")
        local Title = Instance.new("TextLabel")
        local LoadBar = Instance.new("Frame")
        local UICorner_3 = Instance.new("UICorner")
        local Bar = Instance.new("Frame")
        local UICorner_4 = Instance.new("UICorner")
        local Message = Instance.new("TextLabel")

        BlueXLoader.Name = "BlueXLoader"
        BlueXLoader.Parent = game.CoreGui
        BlueXLoader.ResetOnSpawn = false

        Loader.Name = "Loader"
        Loader.Parent = BlueXLoader
        Loader.AnchorPoint = Vector2.new(0.5, 0.5)
        Loader.BackgroundColor3 = _G.Color
        Loader.BorderColor3 = _G.Color
        Loader.BorderSizePixel = 2
        Loader.Position = UDim2.new(0.5, 0, 0.5, 0)
        Loader.Size = UDim2.new(0, 0,  0, 0)

        UICorner.CornerRadius = UDim.new(0, 6)
        UICorner.Parent = Loader

        Menu.Name = "Menu"
        Menu.Parent = Loader
        Menu.AnchorPoint = Vector2.new(0.5, 0.5)
        Menu.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
        Menu.Position = UDim2.new(0.5, 0, 0.5, 0)
        Menu.Size = UDim2.new(1, -4, 1, -4)

        UICorner_2.CornerRadius = UDim.new(0, 6)
        UICorner_2.Parent = Menu

        Title.Name = "Title"
        Title.Parent = Menu
        Title.AnchorPoint = Vector2.new(0.5, 0)
        Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Title.BackgroundTransparency = 1.000
        Title.BorderSizePixel = 0
        Title.Position = UDim2.new(0.5, 0, 0, 4)
        Title.Size = UDim2.new(1, -6, -0.262604743, 55)
        Title.ZIndex = 4
        Title.Font = Enum.Font.SourceSansBold
        Title.Text = text2
        Title.TextColor3 = Color3.fromRGB(197, 197, 197)
        Title.TextSize = 22.000
        Title.TextTransparency = 1

        LoadBar.Name = "LoadBar"
        LoadBar.Parent = Menu
        LoadBar.AnchorPoint = Vector2.new(0.5, 0)
        LoadBar.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
        LoadBar.BorderSizePixel = 0
        LoadBar.Position = UDim2.new(0.5, 0, 1, -28)
        LoadBar.Size = UDim2.new(1, -28, 0, 20)
        LoadBar.BackgroundTransparency = 1

        UICorner_3.CornerRadius = UDim.new(0, 4)
        UICorner_3.Parent = LoadBar

        Bar.Name = "Bar"
        Bar.Parent = LoadBar
        Bar.BackgroundColor3 = _G.Color
        Bar.BorderSizePixel = 0
        Bar.Size = UDim2.new(0, 0, 1, 0)
        Bar.ZIndex = 4
        Bar.BackgroundTransparency = 1

        UICorner_4.CornerRadius = UDim.new(0, 4)
        UICorner_4.Parent = Bar

        Message.Name = "Message"
        Message.Parent = Menu
        Message.AnchorPoint = Vector2.new(0.5, 0)
        Message.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Message.BackgroundTransparency = 1.000
        Message.BorderSizePixel = 0
        Message.Position = UDim2.new(0.5, 0, 0, 32)
        Message.Size = UDim2.new(1, -28, 0, 28)
        Message.SizeConstraint = Enum.SizeConstraint.RelativeXX
        Message.ZIndex = 4
        Message.Font = Enum.Font.SourceSansItalic
        Message.Text = "Welcome, " .. game:GetService("Players").LocalPlayer.DisplayName
        Message.TextColor3 = Color3.fromRGB(197, 197, 197)
        Message.TextSize = 22.000
        Message.TextTransparency = 1
			
	wait(2)

        createTween(Loader,{Size = UDim2.new(0, 280, 0, 98)}, {
            Style = Enum.EasingStyle.Linear,
            Direction = Enum.EasingDirection.In,
            TIME = .4
        })
        
        createTween(Title,{TextTransparency = 0}, {
            Style = Enum.EasingStyle.Linear,
            Direction = Enum.EasingDirection.In,
            TIME = .4
        })
    
        createTween(Message,{TextTransparency = 0}, {
            Style = Enum.EasingStyle.Linear,
            Direction = Enum.EasingDirection.In,
            TIME = .4
        }).Completed:Wait(1)
        
        createTween(LoadBar,{BackgroundTransparency = 0}, {
            Style = Enum.EasingStyle.Linear,
            Direction = Enum.EasingDirection.In,
            TIME = .4
        })
    
        createTween(Bar,{BackgroundTransparency = 0}, {
            Style = Enum.EasingStyle.Linear,
            Direction = Enum.EasingDirection.In,
            TIME = .4
        })
    
        function setSize(int)
            local number = tonumber(int)
            local percent = 1 - ((100 - int) / (100 - 0));
            
            createTween(Bar, {Size = UDim2.new(percent, 0, 1, 0)}, {
                Style = Enum.EasingStyle.Linear,
                Direction = Enum.EasingDirection.In,
                TIME = .4
            })
        end
        
        wait(1)
        setSize(20)
        
        for i = 1, 3 do 
            Message.Text = "Checking ."
            wait(.4)
            Message.Text = "Checking . ."
            wait(.4)
            Message.Text = "Checking . . ."
            wait(.4)
        end
        setSize(60)
        Message.Text = "Whitelist Verification."
        wait(1)
        setSize(80)
        
        Message.Text = game.Players.LocalPlayer.DisplayName.." | Whitelist"
        wait(.5)
        setSize(100)
        
        createTween(Bar,{BackgroundTransparency = 1}, {
            Style = Enum.EasingStyle.Linear,
            Direction = Enum.EasingDirection.In,
            TIME = .4
        }).Completed:Wait()
    
        createTween(LoadBar,{BackgroundTransparency = 1}, {
            Style = Enum.EasingStyle.Linear,
            Direction = Enum.EasingDirection.In,
            TIME = .4
        })
    
        Message.Text = "Loaded!"
        wait(.5)
        createTween(Message,{TextTransparency = 1}, {
            Style = Enum.EasingStyle.Linear,
            Direction = Enum.EasingDirection.In,
            TIME = .4
        })
    
        createTween(Title,{TextTransparency = 1}, {
            Style = Enum.EasingStyle.Linear,
            Direction = Enum.EasingDirection.In,
            TIME = .4
        })
    
        createTween(Loader,{Size = UDim2.new(0, 0, 0, 0)}, {
            Style = Enum.EasingStyle.Linear,
            Direction = Enum.EasingDirection.In,
            TIME = .4
        }).Completed:Wait(2) 
end

function ZexoLib:AddWindow(text)
    local _add = Instance.new("ScreenGui")
    local Window = Instance.new("Frame")
    local HubText1 = Instance.new("TextLabel")
    local DinoHubText2 = Instance.new("TextButton")
    local WindowText = Instance.new("TextButton")
    local TabWindow = Instance.new("ScrollingFrame")
    local TabWindowList = Instance.new("UIListLayout")
    local ContainerHolder = Instance.new("Frame")
    
    --Properties:
    
    _add.Name = "Zexo"
    _add.Parent = game.CoreGui
    _add.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    
    Window.Name = "Window"
    Window.Parent = _add
    Window.AnchorPoint = Vector2.new(0.5, 0.5)
    Window.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    Window.BorderSizePixel = 0
    Window.Position = UDim2.new(0, 392, 0, 264)
    Window.Size = UDim2.new(0, 0, 0, 0)
    Window.ClipsDescendants = true
    
    HubText1.Name = "HubText1"
    HubText1.Parent = Window
    HubText1.BackgroundColor3 = Color3.fromRGB(0, 255, 155)
    HubText1.BackgroundTransparency = 1.000
    HubText1.BorderSizePixel = 0
    HubText1.Position = UDim2.new(0, 7, 0, 0)
    HubText1.Size = UDim2.new(0, 35, 0, 20)
    HubText1.Font = Enum.Font.GothamSemibold
    HubText1.Text = text
    HubText1.TextColor3 = _G.Color
    HubText1.TextSize = 13.000
    HubText1.TextXAlignment = Enum.TextXAlignment.Left 
    
    DinoHubText2.Name = "DinoHubText2"
    DinoHubText2.Parent = Window
    DinoHubText2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    DinoHubText2.BackgroundTransparency = 1.000
    DinoHubText2.BorderSizePixel = 0
    DinoHubText2.Position = UDim2.new(0, 330, 0, 0)
    DinoHubText2.Size = UDim2.new(0, 20, 0, 20)
    DinoHubText2.Font = Enum.Font.GothamSemibold
    DinoHubText2.Text = "Min"
    DinoHubText2.TextColor3 = Color3.fromRGB(255, 0, 0)
    DinoHubText2.TextSize = 13.000
    DinoHubText2.TextXAlignment = Enum.TextXAlignment.Right
    DinoHubText2.MouseButton1Down:Connect(function()
    Window:TweenSize(UDim2.new(0, 392, 0, 20), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .6, true)
    end)
  
    DinoHubText2.MouseButton1Up:Connect(function()
    Window:TweenSize(UDim2.new(0, 392, 0, 344), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .6, true)
    end)
    
    WindowText.Name = "WindowText"
    WindowText.Parent = Window
    WindowText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    WindowText.BackgroundTransparency = 1.000
    WindowText.BorderSizePixel = 0
    WindowText.Position = UDim2.new(0, 365, 0, 0)
    WindowText.Size = UDim2.new(0, 20, 0, 20)
    WindowText.Font = Enum.Font.GothamSemibold
    WindowText.Text = "Exit"
    WindowText.TextColor3 = Color3.fromRGB(255, 0, 0)
    WindowText.TextSize = 13.000
    WindowText.TextXAlignment = Enum.TextXAlignment.Right
    
    TabWindow.Name = "TabWindow"
    TabWindow.Parent = Window
    TabWindow.Active = true
    TabWindow.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    TabWindow.BorderSizePixel = 0
    TabWindow.Position = UDim2.new(0, 7, 0, 20)
    TabWindow.Size = UDim2.new(0, 375, 0, 20)
    TabWindow.CanvasSize = UDim2.new(2, 0, 0, 0)
    TabWindow.ScrollBarThickness = 2
    
    TabWindowList.Name = "TabWindowList"
    TabWindowList.Parent = TabWindow
    TabWindowList.FillDirection = Enum.FillDirection.Horizontal
    TabWindowList.SortOrder = Enum.SortOrder.LayoutOrder
    
    ContainerHolder.Name = "ContainerHolder"
    ContainerHolder.Parent = Window
    ContainerHolder.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    ContainerHolder.BorderSizePixel = 0
    ContainerHolder.Position = UDim2.new(0, 0, 0, 40)
    ContainerHolder.Size = UDim2.new(0, 390, 0, 310)

    Window:TweenSize(UDim2.new(0, 390, 0, 350), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .6, true)

    TabWindow.CanvasSize = UDim2.new(0, 0 + TabWindowList.AbsoluteContentSize.X, 0, 0)
    TabWindowList:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
        TabWindow.CanvasSize = UDim2.new(0, 0 + TabWindowList.AbsoluteContentSize.X, 0, 0)
    end)
    
    WindowText.MouseButton1Click:Connect(function()
    Window:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .6, true)
    end)
    
    local gui = Window
    
    local dragging
    local dragInput
    local dragStart
    local startPos
    
    local function update(input)
        local delta = input.Position - dragStart
        gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
    
    gui.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = gui.Position
            
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)
    
    gui.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)
    
    UserInputService.InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            update(input)
        end
    end)

    local ZexoWindow = {}

    function ZexoWindow:NewPage(pagetitle)
        local Container = Instance.new("ScrollingFrame")
        local ContainerList = Instance.new("UIListLayout")
        
        --Properties:
        
        Container.Name = pagetitle or "Container"
        Container.Parent = ContainerHolder
        Container.Active = true
        Container.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        Container.BorderSizePixel = 0
        Container.Position = UDim2.new(0, 5, 0, 5)
        Container.Size = UDim2.new(0, 380, 0, 300)
        Container.Visible = false
        Container.CanvasSize = UDim2.new(0, 0, 0, 5 + ContainerList.Padding.Offset + ContainerList.AbsoluteContentSize.Y)
        Container.ScrollBarThickness = 2
        
        ContainerList.Name = "ContainerList"
        ContainerList.Parent = Container
        ContainerList.HorizontalAlignment = Enum.HorizontalAlignment.Center
        ContainerList.SortOrder = Enum.SortOrder.LayoutOrder
        ContainerList.Padding = UDim.new(0, 5)

        -- Don't Touch This Script Or It Will Mess Up --
        ContainerList:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
            Container.CanvasSize = UDim2.new(0, 0, 0, 0 + ContainerList.Padding.Offset + ContainerList.AbsoluteContentSize.Y)
        end)
        
        Container.ChildAdded:Connect(function()
            Container.CanvasSize = UDim2.new(0, 0, 0, 0 + ContainerList.Padding.Offset + ContainerList.AbsoluteContentSize.Y)
        end)

        local TabButton = Instance.new("TextButton")

        --Properties:
        
        TabButton.Name = "TabButton"
        TabButton.Parent = TabWindow
        TabButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TabButton.BackgroundTransparency = 1.000
        TabButton.BorderSizePixel = 0
        TabButton.Position = UDim2.new(0, 5, 0, 0)
        TabButton.Size = UDim2.new(0, 100, 0, 20)
        TabButton.Font = Enum.Font.GothamSemibold
        TabButton.Text = pagetitle or "Tab"
        TabButton.TextColor3 = Color3.fromRGB(180, 180, 180)
        TabButton.TextSize = 13.000

        -- Don't Touch This Script Or It Will Mess Up --

        TabButton.Size = UDim2.new(0, 10 + TabButton.TextBounds.X, 0, 20)
        
        TabButton.MouseButton1Click:Connect(function()
            for _, co in pairs(ContainerHolder:GetChildren()) do
                if co:IsA("ScrollingFrame") then
                    co.Visible = false
                end
            end
            for _, tb in pairs(TabWindow:GetChildren()) do
                if tb:IsA("TextButton") then
                    TweenService:Create(tb, TweenInfo.new(0.12, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextColor3 = Color3.fromRGB(180, 180, 180)}):Play()
                end
            end
            TweenService:Create(TabButton, TweenInfo.new(0.12, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextColor3 = _G.Color}):Play()
            Container.Visible = true
        end)

        local ZexoPage = {}

        function ZexoPage:NewSection(sectiontitle)
            local Section = Instance.new("Frame")
            local SectionTitle = Instance.new("TextLabel")
            local SectionIn = Instance.new("Frame")
            local SectionInUICorner = Instance.new("UICorner")
            local SectionInList = Instance.new("UIListLayout")
            
            --Properties:
            
            Section.Name = sectiontitle or "Section"
            Section.Parent = Container
            Section.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            Section.Position = UDim2.new(0.0263157897, 0, 0, 0)
            Section.Size = UDim2.new(0, 360, 0, 20)
            Section.BorderSizePixel = 0
            
            SectionTitle.Name = "SectionTitle"
            SectionTitle.Parent = Section
            SectionTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            SectionTitle.BackgroundTransparency = 1.000
            SectionTitle.BorderSizePixel = 0
            SectionTitle.Size = UDim2.new(0, 360, 0, 15)
            SectionTitle.Font = Enum.Font.GothamSemibold
            SectionTitle.Text = "--] "..sectiontitle.. " [--"
            SectionTitle.TextColor3 = _G.Color
            SectionTitle.TextSize = 13.000
            
            SectionIn.Name = "SectionIn"
            SectionIn.Parent = Section
            SectionIn.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            SectionIn.BorderSizePixel = 0
            SectionIn.Position = UDim2.new(0, 0, 0, 20)
            SectionIn.Size = UDim2.new(0, 360, 0, 70)
            
            SectionInUICorner.CornerRadius = UDim.new(0, 2)
            SectionInUICorner.Name = "SectionInUICorner"
            SectionInUICorner.Parent = SectionIn
            
            SectionInList.Name = "SectionInList"
            SectionInList.Parent = SectionIn
            SectionInList.HorizontalAlignment = Enum.HorizontalAlignment.Center
            SectionInList.SortOrder = Enum.SortOrder.LayoutOrder
            SectionInList.Padding = UDim.new(0, 10)

            -- Don't Touch This Script Or It Will Mess Up --

            SectionIn.Size = UDim2.new(0, 360, 0, 5 + SectionInList.AbsoluteContentSize.Y + SectionInList.Padding.Offset)
            SectionInList:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
                SectionIn.Size = UDim2.new(0, 360, 0, 5 + SectionInList.AbsoluteContentSize.Y + SectionInList.Padding.Offset)
            end)
            
            local function ContainerSizeChange()
                local largestListSize = 0
				largestListSize = SectionInList.AbsoluteContentSize.Y
				
				Container.CanvasSize = UDim2.new(0, 0, 0, largestListSize + 35 + SectionInList.Padding.Offset)
			end
            local function sectionsizechange()
				Section.Size = UDim2.new(0, 360, 0, 20 + SectionInList.AbsoluteContentSize.Y + SectionInList.Padding.Offset)
			end
            ContainerSizeChange()
            sectionsizechange()

            SectionInList:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
                ContainerSizeChange()
                sectionsizechange()
            end)

            local Element = {}

            function Element:Button(buttontitle, buttoncallback)
                local ButtonHolder = Instance.new("TextButton")
                local ButtonHolderUICorner = Instance.new("UICorner")
                local ButtonHolderUIStroke = Instance.new("UIStroke")
                local ButtonImage = Instance.new("ImageLabel")
                
                ButtonHolder.Name = buttontitle or "ButtonHolder"
                ButtonHolder.Parent = SectionIn
                ButtonHolder.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
                ButtonHolder.BorderSizePixel = 0
                ButtonHolder.Position = UDim2.new(0, 5, 0, 0)
                ButtonHolder.Size = UDim2.new(0, 350, 0, 25)
                ButtonHolder.AutoButtonColor = false
                ButtonHolder.Font = Enum.Font.GothamSemibold
                ButtonHolder.Text = buttontitle or "Button | Click Me"
                ButtonHolder.TextColor3 = _G.Color
                ButtonHolder.TextSize = 13.000
                
                ButtonHolderUICorner.CornerRadius = UDim.new(0, 1)
                ButtonHolderUICorner.Name = "ButtonHolderUICorner"
                ButtonHolderUICorner.Parent = ButtonHolder
                
                ButtonHolderUIStroke.Name = "ButtonHolderUIStroke"
                ButtonHolderUIStroke.Parent = ButtonHolder
                ButtonHolderUIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                ButtonHolderUIStroke.Color = _G.Color
                ButtonHolderUIStroke.LineJoinMode = Enum.LineJoinMode.Round
                ButtonHolderUIStroke.Thickness = 1.6
                ButtonHolderUIStroke.Transparency = 0
                ButtonHolderUIStroke.Enabled = true
                ButtonHolderUIStroke.Archivable = true
                
                ButtonImage.Name = "ButtonImage"
                ButtonImage.Parent = ButtonHolder
                ButtonImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                ButtonImage.BackgroundTransparency = 1.000
                ButtonImage.BorderSizePixel = 0
                ButtonImage.Position = UDim2.new(0, 5, 0, 3)
                ButtonImage.Size = UDim2.new(0, 18, 0, 18)
                ButtonImage.Image = "rbxassetid://7839505809"
                ButtonImage.ImageColor3 = _G.Color

                -- Don't Touch This Script Or It Will Mess Up --

                ButtonHolder.MouseEnter:Connect(function()

                end)
                ButtonHolder.MouseLeave:Connect(function()
                    TweenService:Create(ButtonHolder, TweenInfo.new(0.12, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Size = UDim2.new(0, 350, 0, 25)}):Play()
                end)
                ButtonHolder.MouseButton1Down:Connect(function()
                    TweenService:Create(ButtonHolder, TweenInfo.new(0.12, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Size = UDim2.new(0, 345, 0, 23)}):Play()
                end)
                ButtonHolder.MouseButton1Up:Connect(function()
                    TweenService:Create(ButtonHolder, TweenInfo.new(0.12, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Size = UDim2.new(0, 350, 0, 25)}):Play()
                end)
                ButtonHolder.MouseButton1Click:Connect(function()
                    pcall(function()
                        buttoncallback()
                    end)
                end)

            end

            function Element:Toggle(toggletitle, togglecallback)
                local ToggleHolder = Instance.new("Frame")
                local ToggleHolderUICorner = Instance.new("UICorner")
                local ToggleImage = Instance.new("ImageLabel")
                local ToggleTitle = Instance.new("TextLabel")
                local ToggleOut = Instance.new("ImageLabel")
                local ToggleOutUICorner = Instance.new("UICorner")
                local ToggleIn = Instance.new("ImageLabel")
                local ToggleInUICorner = Instance.new("UICorner")
                local ToggleHolderButton = Instance.new("TextButton")
                local ToggleHolderUIStroke = Instance.new("UIStroke")
                
                --Properties:
                
                ToggleHolder.Name = toggletitle or "ToggleHolder"
                ToggleHolder.Parent = SectionIn
                ToggleHolder.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
                ToggleHolder.BorderSizePixel = 0
                ToggleHolder.Size = UDim2.new(0, 350, 0, 25)
                
                ToggleHolderUICorner.CornerRadius = UDim.new(0, 1)
                ToggleHolderUICorner.Name = "ToggleHolderUICorner"
                ToggleHolderUICorner.Parent = ToggleHolder
                
                ToggleImage.Name = "ToggleImage"
                ToggleImage.Parent = ToggleHolder
                ToggleImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                ToggleImage.BackgroundTransparency = 1.000
                ToggleImage.BorderSizePixel = 0
                ToggleImage.Position = UDim2.new(0, 5, 0, 3)
                ToggleImage.Size = UDim2.new(0, 18, 0, 18)
                ToggleImage.Image = "rbxassetid://7832083744"
                ToggleImage.ImageColor3 = _G.Color 
                
                ToggleTitle.Name = "ToggleTitle"
                ToggleTitle.Parent = ToggleHolder
                ToggleTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                ToggleTitle.BackgroundTransparency = 1.000
                ToggleTitle.BorderSizePixel = 0
                ToggleTitle.Position = UDim2.new(0, 25, 0, 0)
                ToggleTitle.Size = UDim2.new(0, 250, 0, 25)
                ToggleTitle.Font = Enum.Font.GothamSemibold
                ToggleTitle.Text = toggletitle or "Toggle | Toggle Me !"
                ToggleTitle.TextColor3 = _G.Color
                ToggleTitle.TextSize = 13.000
                ToggleTitle.TextXAlignment = Enum.TextXAlignment.Left
                
                ToggleOut.Name = "ToggleOut"
                ToggleOut.Parent = ToggleHolder
                ToggleOut.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
                ToggleOut.Position = UDim2.new(0, 310, 0, 4)
                ToggleOut.Size = UDim2.new(0, 34, 0, 16)
                ToggleOut.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
                ToggleOut.ImageTransparency = 1.000
                
                ToggleOutUICorner.CornerRadius = UDim.new(0, 1000)
                ToggleOutUICorner.Name = "ToggleOutUICorner"
                ToggleOutUICorner.Parent = ToggleOut
                
                ToggleIn.Name = "ToggleIn"
                ToggleIn.Parent = ToggleOut
                ToggleIn.BackgroundColor3 = _G.Color
                ToggleIn.Position = UDim2.new(0, 2, 0, 2)
                ToggleIn.Size = UDim2.new(0, 12, 0, 12)
                ToggleIn.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
                ToggleIn.ImageTransparency = 1.000
                
                ToggleInUICorner.CornerRadius = UDim.new(0, 1000)
                ToggleInUICorner.Name = "ToggleInUICorner"
                ToggleInUICorner.Parent = ToggleIn
                
                ToggleHolderButton.Name = "ToggleHolderButton"
                ToggleHolderButton.Parent = ToggleHolder
                ToggleHolderButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                ToggleHolderButton.BackgroundTransparency = 1.000
                ToggleHolderButton.BorderSizePixel = 0
                ToggleHolderButton.Size = UDim2.new(0, 350, 0, 25)
                ToggleHolderButton.ZIndex = 2
                ToggleHolderButton.Font = Enum.Font.SourceSans
                ToggleHolderButton.Text = ""
                ToggleHolderButton.TextColor3 = Color3.fromRGB(0, 0, 0)
                ToggleHolderButton.TextSize = 14.000

                ToggleHolderUIStroke.Name = "ToggleHolderUIStroke"
                ToggleHolderUIStroke.Parent = ToggleHolder
                ToggleHolderUIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                ToggleHolderUIStroke.Color = _G.Color
                ToggleHolderUIStroke.LineJoinMode = Enum.LineJoinMode.Round
                ToggleHolderUIStroke.Thickness = 1.6
                ToggleHolderUIStroke.Transparency = 0
                ToggleHolderUIStroke.Enabled = true
                ToggleHolderUIStroke.Archivable = true

                -- Don't Touch This Script Or It Will Mess Up --

                local toggled = false
                ToggleHolderButton.MouseEnter:Connect(function()
                    
                end)
                ToggleHolderButton.MouseLeave:Connect(function()
                    TweenService:Create(ToggleHolder, TweenInfo.new(0.12, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Size = UDim2.new(0, 350, 0, 25)}):Play()
                end)
                ToggleHolderButton.MouseButton1Down:Connect(function()
                    TweenService:Create(ToggleHolder, TweenInfo.new(0.12, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Size = UDim2.new(0, 345, 0, 23)}):Play()
                end)
                ToggleHolderButton.MouseButton1Up:Connect(function()
                    TweenService:Create(ToggleHolder, TweenInfo.new(0.12, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Size = UDim2.new(0, 350, 0, 25)}):Play()
                end)
                ToggleHolderButton.MouseButton1Click:Connect(function()
                    if toggled then
                        TweenService:Create(ToggleIn, TweenInfo.new(0.12, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Position = UDim2.new(0, 2, 0, 2)}):Play()
                        toggled = false
                        pcall(function()
                            togglecallback(toggled)
                        end)
                    else
                        TweenService:Create(ToggleIn, TweenInfo.new(0.12, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Position = UDim2.new(0, 20, 0, 2)}):Play()
                        toggled = true
                        pcall(function()
                            togglecallback(toggled)
                        end)
                    end
                end)
                
            end

        function Element:Slider(name, minx, maxx, start, options, callback)
            local SliderMainText = name
            callback = callback or function() end	

            local PageSliderFrame = Instance.new("Frame")
            local SiderMainTextButton = Instance.new("TextButton")
            local SliderMainTextButtonCorner = Instance.new("UICorner")
            local SlidingBar = Instance.new("Frame")
            local yesCorner = Instance.new("UICorner")
            local MainSlidingBar = Instance.new("Frame")
            local AmountLabelFrame = Instance.new("Frame")
            local AmountLabelFrameCorner = Instance.new("UICorner")
            local yesCorner = Instance.new("UICorner")
            local AmountLabel = Instance.new("TextLabel")
            local SliderText = Instance.new("TextLabel")
            local yessCorner = Instance.new("UICorner")
            local TextBoxHoldrUIStroke = Instance.new("UIStroke")
            local TextBoxImge = Instance.new("ImageLabel")


            PageSliderFrame.Name = "PageSliderFrame"
            PageSliderFrame.Parent = SectionIn
            PageSliderFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            PageSliderFrame.BorderSizePixel = 0
            PageSliderFrame.Position = UDim2.new(0.0211267602, 0, 0.027777778, 0)
            PageSliderFrame.Size = UDim2.new(0, 350, 0, 35)

                TextBoxImge.Name = "TextBoxImge"
                TextBoxImge.Parent = PageSliderFrame 
                TextBoxImge.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                TextBoxImge.BackgroundTransparency = 1.000
                TextBoxImge.BorderSizePixel = 0
                TextBoxImge.Position = UDim2.new(0, 4, 0, 1)
                TextBoxImge.Size = UDim2.new(0, 17, 0, 17)
                TextBoxImge.Image = "rbxassetid://8825007757"
                TextBoxImge.ImageColor3 = _G.Color
                
            SiderMainTextButton.Name = "SiderMainTextButton"
            SiderMainTextButton.Parent = PageSliderFrame
            SiderMainTextButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            SiderMainTextButton.AutoButtonColor = false
            SiderMainTextButton.BackgroundTransparency = 0.500
            SiderMainTextButton.Position = UDim2.new(0.0050000005, 0, 0.700000024, -5)
            SiderMainTextButton.Size = UDim2.new(0, 350, 0, 10)
            SiderMainTextButton.Font = Enum.Font.SourceSans
            SiderMainTextButton.Text = ""
            SiderMainTextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
            SiderMainTextButton.TextSize = 14.000
            SiderMainTextButton.TextTransparency = 1.000

            SliderMainTextButtonCorner.Name = "SliderMainTextButtonCorner"
            SliderMainTextButtonCorner.Parent = SiderMainTextButton

            SlidingBar.Name = "SlidingBar"
            SlidingBar.Parent = SiderMainTextButton
            SlidingBar.BorderSizePixel = 0
            SlidingBar.BackgroundColor3 = Color3.fromRGB(0,0,0)

            SlidingBar.Position = UDim2.new(0.000225, 0, 0.150000006, 0) 
            SlidingBar.Size = UDim2.new(0, 350, 0, 15)


            
            MainSlidingBar.Name = "MainSlidingBar"
            MainSlidingBar.Parent = SlidingBar
            MainSlidingBar.BackgroundColor3 = _G.Color
            MainSlidingBar.BorderSizePixel = 0
            MainSlidingBar.Position = UDim2.new(-0.00000103201, 0, -0.00384615362, 0)
            MainSlidingBar.Size = UDim2.new(0, 255, 0, 13)

            yesCorner.Name = "yesCorner"
            yesCorner.Parent = MainSlidingBar
            
            AmountLabelFrame.Name = "AmountLabelFrame"
            AmountLabelFrame.Parent = PageSliderFrame
            AmountLabelFrame.BackgroundTransparency = 1
            AmountLabelFrame.BorderSizePixel = 0
            AmountLabelFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
            AmountLabelFrame.Position = UDim2.new(0.74999995, 0, 0, 3)
            AmountLabelFrame.Size = UDim2.new(0, 80, 0, 15)

            yessCorner.CornerRadius = UDim.new(0, 3)
            yessCorner.Name = "slayCorner"
            yessCorner.Parent = AmountLabelFrame
            
            AmountLabel.Name = "AmountLabel"
            AmountLabel.Parent = AmountLabelFrame
            AmountLabel.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
            AmountLabel.BackgroundTransparency = 1.000
            AmountLabel.Position = UDim2.new(0, 0, -0.200000003, 2)
            AmountLabel.Size = UDim2.new(0, 75, 0, 15)
            AmountLabel.Font = Enum.Font.SourceSans
            AmountLabel.Text = "50"
            AmountLabel.TextColor3 = _G.Color
            AmountLabel.TextSize = 15.000
            AmountLabel.TextStrokeTransparency = 0
            AmountLabel.TextTransparency = 0
            AmountLabel.TextXAlignment = Enum.TextXAlignment.Right

            SliderText.Name = "SliderText"
            SliderText.Parent = PageSliderFrame
            SliderText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            SliderText.BackgroundTransparency = 1.000
            SliderText.BorderColor3 = Color3.fromRGB(27, 42, 53)
            SliderText.BorderSizePixel = 0
            SliderText.Position = UDim2.new(0, 24, 0, 1)
            SliderText.Size = UDim2.new(0, 247, 0, 19)
            SliderText.Font = Enum.Font.GothamSemibold
            SliderText.Text = SliderMainText
            SliderText.TextColor3 = _G.Color
            SliderText.TextSize = 13.000
            SliderText.TextStrokeTransparency = 1
            SliderText.TextTransparency = 0
            SliderText.TextWrapped = true
            SliderText.TextXAlignment = Enum.TextXAlignment.Left

                TextBoxHoldrUIStroke.Name = "TextBoxHoldrUIStroke"
                TextBoxHoldrUIStroke.Parent = PageSliderFrame
                TextBoxHoldrUIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                TextBoxHoldrUIStroke.Color = _G.Color
                TextBoxHoldrUIStroke.LineJoinMode = Enum.LineJoinMode.Round
                TextBoxHoldrUIStroke.Thickness = 1.6
                TextBoxHoldrUIStroke.Transparency = 0
                TextBoxHoldrUIStroke.Enabled = true
                TextBoxHoldrUIStroke.Archivable = true

            local SMTB = SiderMainTextButton
            local hold = false
            local MSbar = SMTB.SlidingBar.MainSlidingBar
            local amtBox = SMTB.Parent.AmountLabelFrame.AmountLabel
            local Min = minx
            local Max = maxx
            local Default = start

            local plr = game.Players.LocalPlayer
            local ms = plr:GetMouse()
            local rlpos
            local rlsiz
            local ap = Vector2.new(SMTB.AbsolutePosition.X, SMTB.AbsolutePosition.Y)
            local as = Vector2.new(SMTB.AbsoluteSize.X, SMTB.AbsoluteSize.Y)

            amtBox.Text = tostring(Default)
            MSbar.Size = UDim2.new(0, (350/Max)*Default, 0, 7)
            

            local function onInputBegan(input, gameProcessed)
                if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                    hold = true
                end
            end
            SMTB.InputBegan:Connect(onInputBegan)

            game:GetService('UserInputService').InputEnded:Connect(function(input)
                if  input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch  then
                    hold = false
                end
            end)

            game:GetService('RunService').RenderStepped:Connect(function()
                if hold then
                    ap = Vector2.new(SMTB.AbsolutePosition.X, SMTB.AbsolutePosition.Y)
                    as = Vector2.new(SMTB.AbsoluteSize.X, SMTB.AbsoluteSize.Y)

                    rlpos = (ms.X-ap.X)
                    rlsiz = (ms.X-ap.X)
                    local result = math.floor(Max * (rlsiz / 350))
                    if rlpos > 350 then
                        result = Max
                    elseif rlpos < 0 then
                        result = 0
                    end

                    if rlsiz <= 350 and rlsiz >= 0 then
                        amtBox.Text = tostring(result)
                        MSbar.Size = UDim2.new(0, rlsiz, 0, 7)
                        MSbar.Visible = true
                        callback(result)
                    end
                    if rlsiz <= 0 then
                        amtBox.Text = tostring(Min)
                        MSbar.Size = UDim2.new(0, 0, 0, 7)
                        MSbar.Visible = false
                        callback(Min)
                    end
                    if rlsiz >= 350 then
                        amtBox.Text = tostring(Max)
                        MSbar.Size = UDim2.new(0, 350, 0, 7)
                        MSbar.Visible = true
                        callback(Max)
                    end
                    
                end
            end)

        end                
    
            function Element:Textbox(textboxtitle, textboxplaceholdertitle,textboxcallback)
                local TextBoxToggle = Instance.new("Frame")
                local TextBoxToggleUICorner = Instance.new("UICorner")
                local TextBoxImage = Instance.new("ImageLabel")
                local TextBoxTitle = Instance.new("TextLabel")
                local TextBox = Instance.new("TextBox")
                local TextBoxHolderUIStroke = Instance.new("UIStroke")
                
                --Properties:
                
                TextBoxToggle.Name = textboxtitle or "TextBoxToggle"
                TextBoxToggle.Parent = SectionIn
                TextBoxToggle.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
                TextBoxToggle.BorderSizePixel = 0
                TextBoxToggle.Size = UDim2.new(0, 350, 0, 25)
                
                TextBoxToggleUICorner.CornerRadius = UDim.new(0, 1)
                TextBoxToggleUICorner.Name = "TextBoxToggleUICorner"
                TextBoxToggleUICorner.Parent = TextBoxToggle
                
                TextBoxImage.Name = "TextBoxImage"
                TextBoxImage.Parent = TextBoxToggle
                TextBoxImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                TextBoxImage.BackgroundTransparency = 1.000
                TextBoxImage.BorderSizePixel = 0
                TextBoxImage.Position = UDim2.new(0, 5, 0, 3)
                TextBoxImage.Size = UDim2.new(0, 18, 0, 18)
                TextBoxImage.Image = "rbxassetid://7832050494"
                TextBoxImage.ImageColor3 = _G.Color
                
                TextBoxTitle.Name = "TextBoxTitle"
                TextBoxTitle.Parent = TextBoxToggle
                TextBoxTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                TextBoxTitle.BackgroundTransparency = 1.000
                TextBoxTitle.BorderSizePixel = 0
                TextBoxTitle.Position = UDim2.new(0, 25, 0, 0)
                TextBoxTitle.Size = UDim2.new(0, 175, 0, 25)
                TextBoxTitle.Font = Enum.Font.GothamSemibold
                TextBoxTitle.Text = textboxtitle or "TextBox"
                TextBoxTitle.TextColor3 = _G.Color
                TextBoxTitle.TextSize = 13.000
                TextBoxTitle.TextXAlignment = Enum.TextXAlignment.Left
                
                TextBox.Parent = TextBoxToggle
                TextBox.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
                TextBox.BorderSizePixel = 0
                TextBox.Position = UDim2.new(0, 210, 0, 4)
                TextBox.Size = UDim2.new(0, 135, 0, 18)
                TextBox.Font = Enum.Font.GothamSemibold
                TextBox.PlaceholderText = textboxplaceholdertitle or "Enter Text"
                TextBox.Text = ""
                TextBox.TextColor3 = Color3.fromRGB(200, 200, 200)
                TextBox.TextSize = 12.000

                TextBoxHolderUIStroke.Name = "TextBoxHolderUIStroke"
                TextBoxHolderUIStroke.Parent = TextBoxToggle
                TextBoxHolderUIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                TextBoxHolderUIStroke.Color = _G.Color
                TextBoxHolderUIStroke.LineJoinMode = Enum.LineJoinMode.Round
                TextBoxHolderUIStroke.Thickness = 1.6
                TextBoxHolderUIStroke.Transparency = 0
                TextBoxHolderUIStroke.Enabled = true
                TextBoxHolderUIStroke.Archivable = true

                TextBox.FocusLost:Connect(function()
                    pcall(function()
                        textboxcallback(TextBox.Text)
                    end)
                end)
            end

            function Element:Dropdown(dropdowntitle, list, dropdowncallback)
                list = list or {}

                local DropdownHolder = Instance.new("Frame")
                local DropdownHolderUICorner = Instance.new("UICorner")
                local DropdownImage = Instance.new("ImageLabel")
                local DropdownHolderTitle = Instance.new("TextLabel")
                local DropdownButton = Instance.new("TextButton")
                local DropdownIn = Instance.new("Frame")
                local DropdownInList = Instance.new("UIListLayout")
                local DropdownSelectedTitle = Instance.new("TextLabel")
                local DropdownHolderUIStroke = Instance.new("UIStroke")
                
                --Properties:
                
                DropdownHolder.Name = dropdowntitle or "DropdownHolder"
                DropdownHolder.Parent = SectionIn
                DropdownHolder.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
                DropdownHolder.BorderSizePixel = 0
                DropdownHolder.ClipsDescendants = true
                DropdownHolder.Size = UDim2.new(0, 350, 0, 25)
                
                DropdownHolderUICorner.CornerRadius = UDim.new(0, 1)
                DropdownHolderUICorner.Name = "DropdownHolderUICorner"
                DropdownHolderUICorner.Parent = DropdownHolder
                
                DropdownImage.Name = "DropdownImage"
                DropdownImage.Parent = DropdownHolder
                DropdownImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                DropdownImage.BackgroundTransparency = 1.000
                DropdownImage.BorderSizePixel = 0
                DropdownImage.Position = UDim2.new(0, 5, 0, 3)
                DropdownImage.Size = UDim2.new(0, 18, 0, 18)
                DropdownImage.Image = "rbxassetid://7831282709"
                DropdownImage.ImageColor3 = _G.Color
                
                DropdownHolderTitle.Name = "DropdownHolderTitle"
                DropdownHolderTitle.Parent = DropdownHolder
                DropdownHolderTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                DropdownHolderTitle.BackgroundTransparency = 1.000
                DropdownHolderTitle.BorderSizePixel = 0
                DropdownHolderTitle.Position = UDim2.new(0, 25, 0, 0)
                DropdownHolderTitle.Size = UDim2.new(0, 175, 0, 25)
                DropdownHolderTitle.Font = Enum.Font.GothamSemibold
                DropdownHolderTitle.Text = dropdowntitle or "Dropdown | Drop Me !"
                DropdownHolderTitle.TextColor3 = _G.Color
                DropdownHolderTitle.TextSize = 13.000
                DropdownHolderTitle.TextXAlignment = Enum.TextXAlignment.Left
                
                DropdownButton.Name = "DropdownButton"
                DropdownButton.Parent = DropdownHolder
                DropdownButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                DropdownButton.BackgroundTransparency = 1.000
                DropdownButton.BorderSizePixel = 0
                DropdownButton.Size = UDim2.new(0, 350, 0, 25)
                DropdownButton.ZIndex = 2
                DropdownButton.Font = Enum.Font.SourceSans
                DropdownButton.Text = ""
                DropdownButton.TextColor3 = Color3.fromRGB(0, 0, 0)
                DropdownButton.TextSize = 14.000
                
                DropdownIn.Name = "DropdownIn"
                DropdownIn.Parent = DropdownHolder
                DropdownIn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                DropdownIn.BackgroundTransparency = 1.000
                DropdownIn.BorderSizePixel = 0
                DropdownIn.Position = UDim2.new(0, 0, 0, 25)
                DropdownIn.Size = UDim2.new(0, 350, 0, 1)
                
                DropdownInList.Name = "DropdownInList"
                DropdownInList.Parent = DropdownIn
                DropdownInList.SortOrder = Enum.SortOrder.LayoutOrder
       
                DropdownSelectedTitle.Name = "DropdownSelectedTitle"
                DropdownSelectedTitle.Parent = DropdownHolder
                DropdownSelectedTitle.BackgroundColor3 = Color3.new(0,0,0)
                DropdownSelectedTitle.BorderSizePixel = 0
                DropdownSelectedTitle.Position = UDim2.new(0, 345, 0, 2)
                DropdownSelectedTitle.Size = UDim2.new(0, -50, 0, 20)
                DropdownSelectedTitle.Font = Enum.Font.GothamSemibold
                DropdownSelectedTitle.Text = "..."
                DropdownSelectedTitle.TextColor3 = _G.Color
                DropdownSelectedTitle.TextSize = 12.000

                DropdownHolderUIStroke.Name = "DropdownHolderUIStroke"
                DropdownHolderUIStroke.Parent = DropdownHolder 
                DropdownHolderUIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                DropdownHolderUIStroke.Color = _G.Color
                DropdownHolderUIStroke.LineJoinMode = Enum.LineJoinMode.Round
                DropdownHolderUIStroke.Thickness = 1.6
                DropdownHolderUIStroke.Transparency = 0
                DropdownHolderUIStroke.Enabled = true
                DropdownHolderUIStroke.Archivable = true

                -- Don't Touch This Script Or It Will Mess Up --

                DropdownButton.MouseButton1Click:Connect(function()
                    DropdownHolder:TweenSize(UDim2.new(0, 350, 0, 25 + DropdownInList.AbsoluteContentSize.Y), "InOut", "Quad", 0.08, true)
                end)

                DropdownSelectedTitle.Size = UDim2.new(0, 0 - DropdownSelectedTitle.TextBounds.X - 5, 0, 20)
                DropdownSelectedTitle:GetPropertyChangedSignal("Text"):Connect(function()
                    DropdownSelectedTitle.Size = UDim2.new(0, 0 - DropdownSelectedTitle.TextBounds.X - 5, 0, 20)
                end)

                for listindex, listvalue in next, list do
                    local ListButton = Instance.new("TextButton")

                    --Properties:
                    
                    ListButton.Name = listvalue or "ListButton"
                    ListButton.Parent = DropdownIn
                    ListButton.BackgroundColor3 = Color3.fromRGB(0,0,0)
                    ListButton.BorderSizePixel = 0
                    ListButton.Size = UDim2.new(0, 350, 0, 25)
                    ListButton.AutoButtonColor = false
                    ListButton.Font = Enum.Font.GothamSemibold
                    ListButton.Text = listvalue or "List"
                    ListButton.TextColor3 = _G.Color
                    ListButton.TextSize = 14.000

                    ListButton.MouseButton1Click:Connect(function()
                        DropdownHolder:TweenSize(UDim2.new(0, 350, 0, 25), "InOut", "Quad", 0.08, true)
                        DropdownSelectedTitle.Text = ListButton.Text
                        pcall(function()
                            dropdowncallback(ListButton.Text)
                        end)
                    end)
                    
                end

                local NewDropdown = {}
                
                function NewDropdown:Refresh(newlist)
                    newlist = newlist or {}
                    for _, alllist in pairs(DropdownIn:GetChildren()) do
                        if alllist:IsA("TextButton") then
                            alllist:Destroy()
                        end
                    end

                    for newlistindex, newlistvalue in next, newlist do
                        local ListButton = Instance.new("TextButton")

                        --Properties:
                        
                        ListButton.Name = newlistvalue or "ListButton"
                        ListButton.Parent = DropdownIn
                        ListButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
                        ListButton.BorderSizePixel = 0
                        ListButton.Size = UDim2.new(0, 350, 0, 25)
                        ListButton.AutoButtonColor = false
                        ListButton.Font = Enum.Font.GothamSemibold
                        ListButton.Text = newlistvalue or "List"
                        ListButton.TextColor3 = _G.Color
                        ListButton.TextSize = 14.000
    
                        ListButton.MouseButton1Click:Connect(function()
                            DropdownHolder:TweenSize(UDim2.new(0, 350, 0, 25), "InOut", "Quad", 0.08, true)
                            DropdownSelectedTitle.Text = ListButton.Text
                            pcall(function()
                                dropdowncallback(ListButton.Text)
                            end)
                        end)
                    end
                end

                return NewDropdown
            end

            function NewElement:Label(labeltitle)
                local DropdownHolderTitle = Instance.new("TextLabel")

                --Properties:
                
                DropdownHolderTitle.Name = labeltitle or "DropdownHolderTitle"
                DropdownHolderTitle.Parent = SectionIn
                DropdownHolderTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                DropdownHolderTitle.BackgroundTransparency = 1.000
                DropdownHolderTitle.BorderSizePixel = 0
                DropdownHolderTitle.Position = UDim2.new(0, 5, 0, 190)
                DropdownHolderTitle.Size = UDim2.new(0, 350, 0, 15)
                DropdownHolderTitle.Font = Enum.Font.GothamSemibold
                DropdownHolderTitle.Text = labeltitle or "This Is A Description"
                DropdownHolderTitle.TextColor3 = _G.Color
                DropdownHolderTitle.TextSize = 13.000
                DropdownHolderTitle.TextXAlignment = Enum.TextXAlignment.Left

                local DLabel = {}

                function DLabel:Set(newlabeltitle)
                    DropdownHolderTitle.Text = newlabeltitle
                end

                return DLabel
            end

            return Element
        end
        
        return ZexoPage
    end

    return ZexoWindow

end
return ZexoLib
