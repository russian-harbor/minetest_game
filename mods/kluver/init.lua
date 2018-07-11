local MP = minetest.get_modpath(minetest.get_current_modname())

kluver = {}
kluver.modpath = MP

-- load aliases for old map
dofile(MP .. "/aliases.lua")

print("[MOD] Модификация Клювера загружена")
