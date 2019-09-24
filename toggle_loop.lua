-- Toggle between loop-file=inf or loop-file=no.
-- Add hotkey to input.conf like that:
-- ctrl+t script-message-to toggle_loop toggle_loop

-- This is the property after the script is loaded.
local looped = mp.get_property_native("loop-file")

function toggle_loop()
    local duration = mp.get_property_native("duration")
    -- Check the property again in case auto profiles (e.g., extensions.gif)
    -- have changed it since the script is loaded
    looped = mp.get_property_native("loop-file")
    if duration ~= nil then
        if looped ~= true then
            mp.command("set loop-file inf")
            -- mp.set_property_native("loop-file", "inf")
            mp.osd_message("loop-file: inf")
        else
            mp.command("set loop-file no")
            -- mp.set_property_native("loop-file", "no")
            mp.osd_message("loop-file: no")
        end
    end
end

mp.add_key_binding(nil, "toggle_loop", toggle_loop)
