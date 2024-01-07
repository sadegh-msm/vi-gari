local ok, lualine = pcall(require, 'lualine')
if not ok then
    print("can't require lua-line")
    return
end

lualine.setup({
    options = {
        theme = "auto",
    }
})
