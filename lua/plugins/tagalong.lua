return {
    'AndrewRadev/tagalong.vim' ,
    config = function()
        vim.api.nvim_command(":call tagalong#Init()")
    end
}

