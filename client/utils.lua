function DebugPrint(message, ...)
    if Config.Debug then
        print(message, ...)
    end
end

function Lang(item)
    local lang = Locales[Config.Language]

    if lang and lang[item] then
        return lang[item]
    end

    DebugPrint(('[ERROR] Missing translation for item: %s in language: %s'):format(item, Config.Language))

    return '[TRANSLATION MISSING] ' .. item
end