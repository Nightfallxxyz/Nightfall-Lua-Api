-- Example nightfall script
-- Save this file as "example.lua" in C:\Nightfall\scripts\

function on_draw()
    -- Create a standalone window
    cheat.begin("Nightfall Utility")

    -- Add a header
    cheat.text("Main Features", 0, 255, 150, 255)
    
    -- Link checkboxes to the internal cheat variables
    cheat.checkbox("Bunnyhop", "misc_bhop")
    cheat.checkbox("Silent Aim", "rage_silent")
    cheat.checkbox("Skeleton ESP", "esp_skeleton")

    -- Link sliders
    cheat.slider_int("Hitchance", "rage_hitchance", 0, 100)
    cheat.slider_int("FOV Exposure", "world_exposure", 0, 100)

    -- Add a visual separator
    cheat.text("-------------------------", 100, 100, 100, 255)

    -- Custom Logic: Blinking Status Text
    if os.clock() % 2 < 1 then
        cheat.text("System: Online", 50, 255, 50, 255)
    else
        cheat.text("System: Online", 20, 150, 20, 255)
    end

    -- Close the window context
    cheat.end()
end

-- This runs once when the script is loaded
cheat.print("Utility Panel loaded successfully!")