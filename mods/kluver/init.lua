
kluver = {}
kluver.modname = minetest.get_current_modname()
kluver.modpath = minetest.get_modpath(kluver.modname)
kluver.debug = minetest.settings:get_bool('kluver:debug')
kluver.mprint = function (msg)
    print("[" .. kluver.modname .. "] " .. msg)
end

local MP = kluver.modpath

print("[MOD] Модификация Клювера загружена")

-- load aliases for old map
dofile(MP .. "/aliases.lua")

if (kluver.debug) then
    dofile(MP .. "/debug.lua")
end
