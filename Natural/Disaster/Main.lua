--[[ Adicionar o bloco ]]
Part = Instance.new("Part", workspace)

--[[ Tamanho e localização ]]
Part.Size = Vector3.new(9999999999999999999999, 0.01, 999999999999999999999)
Part.CFrame = CFrame.new(28.01, 11.05, -12.62)

--[[ Colisão ]]
Part.CanCollide = true
Part.Anchored = true


--[[ FUNÇÃO ]]
Part.Touched:connect(function(hit)
 if hit and hit.Parent and hit.Parent:FindFirstChild("Humanoid") then
  hit.Parent.Humanoid.Health = 100
end
end)

--[[ Cor e Material ]]
Part.Material = "Neon"
while wait() do
    Part.Color = Color3.new(255/255,0/255,0/255)
    for i = 0,255,10 do
        wait()
        Part.Color = Color3.new(255/255,i/255,0/255)
    end
    for i = 255,0,-10 do
        wait()
        Part.Color = Color3.new(i/255,255/255,0/255)
    end
    for i = 0,255,10 do
        wait()
        Part.Color = Color3.new(0/255,255/255,i/255)
    end
    for i = 255,0,-10 do
        wait()
        Part.Color = Color3.new(0/255,i/255,255/255)
    end
    for i = 0,255,10 do
        wait()
        Part.Color = Color3.new(i/255,0/255,255/255)
    end
    for i = 255,0,-10 do
        wait()
        Part.Color = Color3.new(255/255,0/255,i/255)
    end
end

