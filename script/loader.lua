local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/vKhonshu/intro2/main/ui2"))() 
local NotifyLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/vKhonshu/intro/main/ui"))()

-- Get the executor name
local executorname = getexecutorname() or identifyexecutor() or "Unknown Executor"

-- Supported executors
local supportedExecutors = { AWP = true, Wave = true, Nihon = true, ["Synapse Z"] = true, Swift = true }

-- Check if executor is supported
if supportedExecutors[executorname] then
    NotifyLib.prompt('Executor Supported', executorname .. " is supported!", 5)
    loadstring(game:HttpGet('https://raw.githubusercontent.com/mvqna/another-hub/refs/heads/main/main/loader.lua'))()
else
    NotifyLib.prompt('Executor Not Supported', executorname .. " is not supported, expect errors.", 5)
    loadstring(game:HttpGet('https://raw.githubusercontent.com/mvqna/another-hub/refs/heads/main/main/loader.lua'))()
end
