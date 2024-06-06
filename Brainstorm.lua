Brainstorm = {}
function initBrainstorm()
    local lovely = require("lovely")
    local nativefs = require("nativefs")
    assert(load(nativefs.read(lovely.mod_dir .. "/Brainstorm/Brainstorm_main.lua")))()
    assert(load(nativefs.read(lovely.mod_dir .. "/Brainstorm/Brainstorm_UI.lua")))()
    assert(load(nativefs.read(lovely.mod_dir .. "/Brainstorm/Brainstorm_keyhandler.lua")))()
    assert(load(nativefs.read(lovely.mod_dir .. "/Brainstorm/Brainstorm_reroll.lua")))()
    assert(load(nativefs.read(lovely.mod_dir .. "/Brainstorm/Brainstorm_language.lua")))()
    if nativefs.getInfo(lovely.mod_dir .. "/Brainstorm/settings.lua") then
        local settings_file = STR_UNPACK(nativefs.read((lovely.mod_dir .. "/Brainstorm/settings.lua")))
        if settings_file ~= nil then
            Brainstorm.SETTINGS = settings_file
        end
    end
end
