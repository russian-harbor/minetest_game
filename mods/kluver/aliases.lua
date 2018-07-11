
local function register_moreblocks_alias(modname, origname, newname)
    minetest.register_alias(modname.. ":stair_outer_" ..origname, "moreblocks:stair_" ..(newname or origname).. "_outer")
    minetest.register_alias(modname.. ":stair_inner_" ..origname, "moreblocks:stair_" ..(newname or origname).. "_inner")
end

-- add aliases for old map blocks
register_moreblocks_alias("stairs", "stone")
register_moreblocks_alias("stairs", "brick")
register_moreblocks_alias("stairs", "sandstone")
register_moreblocks_alias("stairs", "sandstone_brick")
register_moreblocks_alias("stairs", "silver_sandstone")
register_moreblocks_alias("stairs", "silver_sandstone_brick")
