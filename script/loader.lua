local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

-- Get the executor name
local executorname = getexecutorname() or identifyexecutor() or "Unknown Executor"

-- Supported executors
local supportedExecutors = { AWP = true, Wave = true, Nihon = true, ["Synapse Z"] = true, Swift = true, Delta = true }

-- Check if executor is supported
if supportedExecutors[executorname] then
    Fluent:Notify({
        Title = "Another Hub",
        Content = executorname .. " is supported!",
        SubContent = "Valid", -- Optional
        Duration = 5 -- Set to nil to make the notification not disappear
    })
    
    loadstring(game:HttpGet('https://raw.githubusercontent.com/folxxs/another-hub/refs/heads/main/main/loader.lua'))()
else
    Fluent:Notify({
        Title = "Another Hub",
        Content = executorname .. " is not supported, expect errors.",
        SubContent = "Failed", -- Optional
        Duration = 5 -- Set to nil to make the notification not disappear
    })
    loadstring(game:HttpGet('https://raw.githubusercontent.com/folxxs/another-hub/refs/heads/main/main/loader.lua'))()
end
