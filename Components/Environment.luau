local Environment = {}

local function Safe(Fn)
    return Fn or function() return nil end
end

Environment.getgenv            = getgenv
Environment.getrenv            = getrenv
Environment.getgc              = getgc
Environment.identifyexecutor   = identifyexecutor
Environment.request            = request
Environment.cloneref           = cloneref
Environment.gethui             = gethui
Environment.getcallbackvalue   = getcallbackvalue
Environment.getinstances       = getinstances
Environment.getnilinstances    = getnilinstances
Environment.fireproximityprompt = fireproximityprompt
Environment.fireclickdetector  = fireclickdetector
Environment.firetouchinterest  = firetouchinterest
Environment.clonefunction      = clonefunction
Environment.newcclosure        = newcclosure
Environment.hookfunction       = hookfunction
Environment.restorefunction    = restorefunction
Environment.isfunctionhooked   = isfunctionhooked
Environment.isexecutorclosure  = isexecutorclosure
Environment.getnamecallmethod  = getnamecallmethod
Environment.hookmetamethod     = hookmetamethod
Environment.getrawmetatable    = getrawmetatable
Environment.setrawmetatable    = setrawmetatable
Environment.isreadonly         = isreadonly
Environment.setreadonly        = setreadonly
Environment.Drawing            = Drawing
Environment.writefile          = writefile
Environment.isfile             = isfile
Environment.readfile           = readfile
Environment.appendfile         = appendfile
Environment.loadfile           = loadfile
Environment.delfile            = delfile
Environment.makefolder         = makefolder
Environment.delfolder          = delfolder
Environment.listfiles          = listfiles
Environment.getcustomasset     = getcustomasset
Environment.gethiddenproperty  = gethiddenproperty
Environment.sethiddenproperty  = sethiddenproperty
Environment.getthreadidentity  = getthreadidentity
Environment.setthreadidentity  = setthreadidentity
Environment.isnetworkowner     = isnetworkowner
Environment.firesignal         = firesignal
Environment.replicatesignal    = replicatesignal
Environment.getconnections     = getconnections
Environment.require            = require
Environment.oth                = oth
Environment.run_on_actor       = run_on_actor

return Environment
