return {
    'Djancyp/better-comments.nvim' ,
    config = function()
        require('better-comment').Setup({
            tags = {
                {
                    name = "TODO",
                    fg = "white",
                    bg = "#FFA500",
                    bold = true,
                    virtual_text = "",
                },
                {
                    name = "FIXME",
                    fg = "white",
                    bg = "#FF748C",
                    bold = true,
                    virtual_text = "",
                },
                {
                    name = "WARNING",
                    fg = "white",
                    bg = "#FFA500",
                    bold = true,
                    virtual_text = "",
                },
                {
                    name = "!",
                    fg = "#f44747",
                    bg = "",
                    bold = true,
                    virtual_text = "",
                }

            }
        })
    end
}
