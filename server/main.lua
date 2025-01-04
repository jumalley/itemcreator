lib.addCommand('createitem', {
    help = 'Opens the item creation dialog for an admin',
    restricted = Config.RestrictedGroup,
}, function(source, args, raw)
    TriggerClientEvent('itemcreator:client:createItemInputDialog', source)
end)

RegisterNetEvent("itemcreator:server:appendToFile")
AddEventHandler("itemcreator:server:appendToFile", function(item)
    local itemText = FormatItemData(item)
    local existingContent = LoadResourceFile(cache.resource, 'items.lua') or ''
    local output = existingContent .. itemText
    SaveResourceFile(cache.resource, 'items.lua', output, -1)
end)

function FormatItemData(item)
    local formattedData = {
        name = item.name,
        label = item.label,
        weight = item.weight,
        type = item.type,
        image = item.image,
        unique = tostring(item.unique),
        useable = tostring(item.useable),
        description = item.description,
        shouldClose = tostring(item.shouldClose),
        combinable = FormatCombinable(item.combinable),
        object = item.object or ""
    }

    local formattedString = string.format(
        "['%s'] = {\n" ..
        "    ['name'] = '%s',\n" ..
        "    ['label'] = '%s',\n" ..
        "    ['weight'] = %d,\n" ..
        "    ['type'] = '%s',\n" ..
        "    ['image'] = '%s',\n" ..
        "    ['unique'] = %s,\n" ..
        "    ['useable'] = %s,\n" ..
        "    ['description'] = '%s',\n" ..
        "    ['shouldClose'] = %s,\n" ..
        "    ['combinable'] = %s,\n" ..
        "    ['object'] = '%s'\n" ..
        "},\n",
        item.name,
        formattedData.name,
        formattedData.label,
        formattedData.weight,
        formattedData.type,
        formattedData.image,
        formattedData.unique,
        formattedData.useable,
        formattedData.description,
        formattedData.shouldClose,
        formattedData.combinable,
        formattedData.object
    )
    return formattedString
end

function FormatCombinable(combinable)
    if combinable == nil then
        return "nil"
    else
        return string.format("'%s'", combinable)
    end
end
