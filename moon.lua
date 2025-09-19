local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Moon Hub",
   Icon = 0, 
   LoadingTitle = "Rayfield Interface Suite",
   LoadingSubtitle = "by Sirius",
   ShowText = "Rayfield", 
   Theme = "Default", 

   ToggleUIKeybind = "K", 

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false,
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil,
      FileName = "Moon Hub"
   },

   link = {
      Enabled = false,
      Invite = "https://discord.gg/s3xs99yVGv", 
      RememberJoins = true 
   },

   KeySystem = true, 
   KeySettings = {
      Title = "Moon Hub",
      Subtitle = "Key System",
      Note = "Copy link",
      FileName = "Moon Key", 
      SaveKey = false,
      GrabKeyFromSite = false, 
      Key = {"sigurebanzai"}
   }
})

-- Tab は既に作られている前提
local Tab = Window:CreateTab("Combat", "sword") -- 例

local Button = Tab:CreateButton({
    Name = "OP Fling All",
    Callback = function()
        -- 安全チェック
        local Players = game:GetService("Players")
        local player = Players.LocalPlayer
        if not player then return end
        local char = player.Character or player.CharacterAdded:Wait()

        -- 除外するパーツ名テーブル（アバターの主要部位）
        local excludeNames = {
            Head = true,
            ["Right Arm"] = true,
            ["Left Arm"] = true,
            ["Right Leg"] = true,
            ["Left Leg"] = true,
            Torso = true,
            UpperTorso = true,
            LowerTorso = true,
            HumanoidRootPart = true
        }

        -- どれくらいの高さに飛ばすか（調整可）
        local flingOffset = Vector3.new(0, 500, 0)
        -- BodyPosition の MaxForce（大きめに）
        local maxForce = Vector3.new(1e9, 1e9, 1e9)
        -- BodyPosition を残す時間（秒）
        local keepSeconds = 3

        -- メイン処理（pcallで安全に）
        local ok, err = pcall(function()
            for _, obj in pairs(workspace:GetDescendants()) do
                if obj:IsA("BasePart") then
                    -- アンカーされているものは無視
                    if obj.Anchored then goto continue end
                    -- 自キャラの一部は無視
                    if obj:IsDescendantOf(char) then goto continue end
                    -- 名前ベースの除外
                    if excludeNames[obj.Name] then goto continue end

                    -- 既存の BodyPosition / BodyGyro を削除
                    for _, c in pairs(obj:GetChildren()) do
                        if c:IsA("BodyPosition") or c:IsA("BodyGyro") then
                            c:Destroy()
                        end
                    end

                    -- 新規 BodyPosition を作成して上方へ移動させる
                    local bp = Instance.new("BodyPosition")
                    bp.MaxForce = maxForce
                    bp.Position = obj.Position + flingOffset
                    bp.Parent = obj

                    -- 数秒後に消す（cleanup）
                    delay(keepSeconds, function()
                        if bp and bp.Parent then
                            pcall(function() bp:Destroy() end)
                        end
                    end)
                end
                ::continue::
            end
        end)

        if not ok then
            warn("OP Fling 実行中にエラー:", err)
        end
    end,
})



