server = "website"

function getAllPlayersName ()
    for i, player in ipairs(getElementsByType("player")) do
    if player then 
      return ""..getPlayerName(player)..""
    else 
    return "No Players On Server"
    end
end


function getServerN ()
    return ""..getServerName()..""
end 




function getAllPlayersWhoHaveAdmin ()

    for _ , players_ in ipairs ( getElementsByType ( "player" ) ) do

    if players_ then  

  if isObjectInACLGroup("user."..getAccountName(getPlayerAccount(players_)), aclGetGroup("Console")) then

return " "..getPlayerName(players_)..""
else 
 return "No Console  Online"
end 
else 
return "No Players  Online"
end
end 
end 


function getPlayersAlive ()
  for _ , players__ in ipairs ( getElementsByType ( "player" ) ) do
      if players__ then 
        if  getElementHealth(players__) > 0 then
         return ""..getPlayerName(players__)..""
         else 
           return "there is no player Alive"
          end 
        else
      return "there is no players on Server"
     end 
  end 

  function getinfos ()
    local open2 = fileOpen("config.ini")
    texts = fileRead(open2,100)
    fileClose(open2)
    text = string.sub(""..texts.."", 7, 10)
    return text
    end 
    
    function typeinlog (str)
     tr = getinfos ()
    if tr == "true" then 
    local open = fileOpen("log.txt")
    fileRead(open,1500000)
    fileWrite(open,"["..os.date("%H:%M:%S").."]:"..str.."\n")
    fileFlush(open)
    fileClose(open)
    else
    outputServerLog("Note:log.txt dont work you must set true in file config.ini")
    end 
    end 
  
    
  function getPlayersDead ()
    for _ , players__ in ipairs ( getElementsByType ( "player" ) ) do
        if players__ then 
          if  getElementHealth(players__) == 0 then
           return ""..getPlayerName(players__)..""
           else 
             return "there is no player Dead"
            end 
          else
        return "there is no players on Server"
       end 
    end 


function getTeamsonServer ()
    for _ , teams in ipairs ( getElementsByType ( "team" ) ) do
        if teams  then 
        local theTeam = getTeamFromName (""..teams.."")
    return ""..getTeamName (theTeam)..""
        else 
        return "there is no Teams On Server"
        end 
    end
end 


function getAllPlayersWithIp ()

    for i, player in ipairs(getElementsByType("player")) do

        if player then 

       return ""..getPlayerIP(player)..""
       
        else 
    return "there is no players"
        end 
    end 


  function getfullVersionServer ()
    local version = getVersion()
    return ""..version.number.." "..version.type.."" 
  end 


function getSeverIpp ( )
local ip = getServerPort() 
return ""..ip..""
end 

function getMaxPlayersInServer ()
  return ""...getPlayerCount().." / "..getMaxPlayers()..""
end 

function getAllAccountsInServer ()

  for ids ,accounts in ipairs ( getAccounts ()) do

    if #ids ~= 0 then 

  return ""..getAccountName(accounts)..""
    else  
 return "There is No Accounts On Server !"
    end 
  end 

  function getAllAccountsIDsInServer ()
  
    for ids ,accounts in ipairs ( getAccounts ()) do
  
      if #ids ~= 0 then 
  
    return ""..#ids..""
      else  
   return "There is No Accounts On Server !"
      end 
    end 
                        
 

    function serverKickPlayer (playerName, reason)
   local player = getPlayerFromName(playerName)
     if player then 
      if kickPlayer(player, reason) then
      return "Has Been Kick "..getPlayerName(player).." By "..server..""
      else
      return "There is something Error"
      end
    else 
    return "Player not found"
    end 
    end
    


    
function serverBanPlayer (playerName, reason, duration)
 if getPlayerFromName(playerName) then 
	if duration then
duration = duration * 3600
	else
duration = 0
 end
 if banPlayer(getPlayerFromName(playerName), false, false, true, getRootElement(), reason, duration) then
return "Has Been Banned "..getPlayerName(getPlayerFromName(playerName)).." By "..server..""
else 
return "There is something Error"
 end
else 
 return "Player not found"
 end
end  


function getlistBans ()
  local list = getBans() 
for k, v in ipairs ( list ) do
    if v then 
    local name = getBanNick(v)
return " "..name.." "
  else 
 return "there no Player Have Ban On Server"
        end 
     end
end
