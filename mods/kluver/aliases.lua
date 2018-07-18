
local convert_blocks = {
	"acacia_wood",
	"aspen_wood",
	"brick",
	"cobble",
	"desert_cobble",
	"desert_sandstone_brick",
	"desert_stone_block",
	"desert_stonebrick",
	"goldblock",
	"ice",
	"junglewood",
	"obsidian_block",
	"obsidian",
	"obsidianbrick",
	"pine_wood",
	"sandstone_block",
	"sandstone",
	"sandstonebrick",
	"silver_sandstone_block",
	"silver_sandstone",
	"snowblock",
	"steelblock",
	"stone_block",
	"stone",
	"stonebrick",
	"straw",
	"tinblock",
	"wood"
}


local function register_moreblocks_alias(modname, origname, newname)
	minetest.register_alias(
		modname .. ":stair_outer_" .. origname,
		"moreblocks:stair_" .. (newname or origname) .. "_outer"
	)
	minetest.register_alias(
		modname .. ":stair_inner_" .. origname,
		"moreblocks:stair_" .. (newname or origname) .. "_inner"
	)
end


-- add aliases for old map blocks
for _, blockname in pairs(convert_blocks) do
	register_moreblocks_alias("stairs", blockname)
end
