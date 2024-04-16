local installMasonPlugins = function()
    -- Install mason plugins
    local masonPlugins = {
        "stylua",
        "lua-language-server",
        "prettier",
        "tailwindcss-language-server",
        "typescript-language-server"
    }

	-- it's like array.join() in JS
    local rhsForMason = table.concat(masonPlugins, " ")

    vim.keymap.set("n", "<leader>imp", "<cmd>MasonInstall " .. rhsForMason .. "<cr>")
end

return installMasonPlugins
