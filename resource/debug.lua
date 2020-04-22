
addEventHandler("onDebugMessage",resourceRoot, 

    function(message, level, file, line)
 if level == 1 then
            typeinlog("ERROR: " .. file .. ":" .. tostring(line) .. ", " ..message.."")
        elseif level == 2 then
            typeinlog("WARNING: " .. file .. ":" .. tostring(line) .. ", " ..message.."")
        elseif level == 3 then 
            typeinlog("INFO: " .. file .. ":" .. tostring(line) .. ", " .. message.." ")
        end
 end)





function getAllbugs ( )
local opendebug = fileOpen("log.txt")
if opendebug then 
    local count = fileGetSize(open) 
    local bugs = fileRead(open, count) 
    fileClose(file) 
    return ""..bugs..""
       end 
end


addEventHandler("onResourceStart",resourceRoot, function (resource)
local nameResource = getResourceName(resource)
 if  hasObjectPermissionTo (resource, "resource."..nameResource.."") then 
 outputChatBox("the Resource Was Started",root,0,255,0)
return true
else 
 outputChatBox("تم ايقاف المود يجب وضع المود ف اقروب الادمن",root,255,0,0)
return false
end 
end 
    
