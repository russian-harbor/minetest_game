
local mprint = kluver.mprint

local saveNodesToFile = function(name, param)
    local filepath = minetest.get_worldpath().."/nodes.txt"
    local file = io.open(filepath, "w")

    if not file then
        return false, 'Ошибка: файл для блоков не создаётся!'
    end

    local nodes = {}
    for key, node in pairs(minetest.registered_nodes) do
       nodes[#nodes + 1] = key
    end
    table.sort(nodes)

    for _, node in ipairs(nodes) do
        file:write(node .. "\n")
    end

    mprint('список блоков сохранён в файле "' .. filepath .. '"')

    file:close()

    return true, #nodes .. " блоков были сохранены в файле " .. filepath
 end

 minetest.register_chatcommand("nodestofile", {
    params = "",
    description = "сохранить список всех регистрированых блоков в файл",
    func = saveNodesToFile,
 })

 mprint("отладчик загружен")
