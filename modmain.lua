GLOBAL.AddTooltipCategory("vanillascrapbook")

local function formatText(input)
    input = string.gsub(input, "\n\n", "\n")
    input = string.gsub(input, "\n", " ")


    input = string.gsub(input, "%. ", ".\n - ")
    input = "- " .. input
    return input
end

local scrapbookdata = require("screens/redux/scrapbookdata")

for entry, v in pairs(scrapbookdata) do
    if v.specialinfo or GLOBAL.STRINGS.SCRAPBOOK.SPECIALINFO[string.upper(entry)] then
        for k, recipe in pairs(GLOBAL.AllRecipes) do
            if recipe.product == string.lower(entry) then
                if GLOBAL.STRINGS.SCRAPBOOK.SPECIALINFO[string.upper(entry)] then
                    local text = formatText(GLOBAL.STRINGS.SCRAPBOOK.SPECIALINFO[string.upper(entry)])
                    GLOBAL.AddTooltipForItem(k, text)
                elseif GLOBAL.STRINGS.SCRAPBOOK.SPECIALINFO[v.specialinfo] then
                    local text = formatText(GLOBAL.STRINGS.SCRAPBOOK.SPECIALINFO[v.specialinfo])
                    GLOBAL.AddTooltipForItem(k, text)
                end
            end
        end
    end
end
