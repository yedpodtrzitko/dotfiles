hs.hotkey.bind({"shift", "ctrl"}, "=", function()
    hs.timer.doAfter(1, function()
        hs.caffeinate.startScreensaver()
    end)
end)

hs.hotkey.bind({"alt", "cmd"}, "m", function()
    local win = hs.window.focusedWindow()
    hs.grid.maximizeWindow(win)
end)

