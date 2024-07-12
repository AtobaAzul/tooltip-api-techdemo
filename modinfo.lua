name = "Tooltipify"
-- borrowed from IA
folder_name = folder_name or "workshop-"
if not folder_name:find("workshop-") then
    name = "[LOCAL] - " .. name
end

--RELEASE.MAJOR.MINOR.FIX
local _version = "1"
description = [[
󰀔 [ Version: ]] .. _version .. [[
  A demonstration mod showcasing some use-cases for the Tools & Tips API. Generates tooltips for all items based off the scrapbook.
]]

author = "Atobá Azul"

version = "v" .. _version


forumthread = ""

api_version = 10

dst_compatible = true
dont_starve_compatible = false
reign_of_giants_compatible = false
hamlet_compatible = false

forge_compatible = false

all_clients_require_mod = false
client_only_mod = true

icon_atlas = "modicon.xml"
icon = "modicon.tex"

server_filter_tags = { "api", "tooltip", "tooltips" }

priority = 1

------------------------------
-- local functions to makes things prettier

---@param title string
local function Header(title)
    return {
        name = "",
        label = title,
        hover = "",
        options = { { description = "", data = false } },
        default = false
    }
end

local function SkipSpace()
    return {
        name = "",
        label = "",
        hover = "",
        options = { { description = "", data = false } },
        default = false
    }
end

---@param name string
---@param label string
---@param hover string
---@param default boolean
local function BinaryConfig(name, label, hover, default)
    return {
        name = name,
        label = label,
        hover = hover,
        options = { { description = "Enabled", data = true, hover = "Enabled." },
            { description = "Disabled", data = false, hover = "Disabled." } },
        default = default
    }
end
------------------------------
mod_dependencies = {
    {
        ["tooltip-api"] = false
    }
}
configuration_options = {

}
