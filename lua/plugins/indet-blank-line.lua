return{
    'lukas-reineke/indent-blankline.nvim',
    dependencies = {
        'theglander/indent-rainbowline.nvim',
    },
    config = function()
        opts = {}
        -- other blankline configuration here
        require('ibl').setup(require('indent-rainbowline').make_opts(opts, {
            -- how transparent should the rainbow colors be. 1 is completely opaque, 0 is invisible. 0.07 by default
            color_transparency = 0.15,
            -- the 24-bit colors to mix with the background. specified in hex.
            -- { 0xffff40, 0x79ff79, 0xff79ff, 0x4fecec, } by default
            colors = { 0xff0000, 0x00ff00, 0x0000ff, },
        }))
    end,
}
