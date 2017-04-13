devmode = {}
devmode.bump = require("lib.bump_debug")

function devmode.memory()
    local count = collectgarbage("count")
    if count>=1024 then
        count = count / 1024
        print(count .. " MB")
    end
    if count>=1024 then
        count = count / 1024
        print(count .. " GB")
    end
end
