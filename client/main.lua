RegisterNetEvent('itemcreator:client:createItemInputDialog', function()
    local input = lib.inputDialog(Lang("ITEM_CREATE_HEADING"), {
        { label = Lang("ITEM_NAME_LABEL"), type = 'input', placeholder = Lang("ITEM_NAME_PLACEHOLDER"), description = Lang("ITEM_NAME_DESCRIPTION"), required = true },
        { label = Lang("ITEM_LABEL_LABEL"), type = 'input', placeholder = Lang("ITEM_LABEL_PLACEHOLDER"), description = Lang("ITEM_LABEL_DESCRIPTION"), required = true },
        { label = Lang("ITEM_WEIGHT_LABEL"), type = 'number', placeholder = Lang("ITEM_WEIGHT_PLACEHOLDER"), description = Lang("ITEM_WEIGHT_DESCRIPTION"), default = Config.DefaultWeight, required = true },
        { label = Lang("ITEM_TYPE_LABEL"), type = 'select', description = Lang("ITEM_TYPE_DESCRIPTION"), options = {
            { value = 'item', label = Lang("ITEM_TYPE_ITEM") },
            { value = 'weapon', label = Lang("ITEM_TYPE_WEAPON") }
        }, required = true },
        { label = Lang("ITEM_IMAGE_LABEL"), type = 'input', placeholder = Lang("ITEM_IMAGE_PLACEHOLDER"), description = Lang("ITEM_IMAGE_DESCRIPTION"), default = 'placeholder.png', required = true },
        { label = Lang("ITEM_UNIQUE_LABEL"), type = 'checkbox', description = Lang("ITEM_UNIQUE_DESCRIPTION"), default = false },
        { label = Lang("ITEM_USABLE_LABEL"), type = 'checkbox', description = Lang("ITEM_USABLE_DESCRIPTION"), default = true },
        { label = Lang("ITEM_SHOULD_CLOSE_LABEL"), type = 'checkbox', description = Lang("ITEM_SHOULD_CLOSE_DESCRIPTION"), default = false },
        { label = Lang("ITEM_DECAY_LABEL"), type = 'number', placeholder = Lang("ITEM_DECAY_PLACEHOLDER"), description = Lang("ITEM_DECAY_DESCRIPTION"), step = 0.01, required = false },
        { label = Lang("ITEM_DESCRIPTION_LABEL"), type = 'input', placeholder = Lang("ITEM_DESCRIPTION_PLACEHOLDER"), description = Lang("ITEM_DESCRIPTION_DESCRIPTION"), required = false },
        { label = Lang("ITEM_OBJECT_LABEL"), type = 'input', placeholder = Lang("ITEM_OBJECT_PLACEHOLDER"), description = Lang("ITEM_OBJECT_DESCRIPTION"), required = false }
    })

    if not input then return end

    local item = {
        name = input[1],
        label = input[2],
        weight = input[3],
        type = input[4],
        image = input[5],
        unique = input[6],
        useable = input[7],
        shouldClose = input[8],
        decay = input[9] or nil,
        description = input[10] or nil,
        object = input[11] or nil
    }

    TriggerServerEvent("itemcreator:server:appendToFile", item)

    print(json.encode(item))
end)
