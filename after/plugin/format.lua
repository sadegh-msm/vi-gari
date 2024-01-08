local format_on_save = require("format-on-save")
local formatters = require("format-on-save.formatters")

format_on_save.setup({
    exclude_path_patterns = {
        "/node_modules/",
        ".local/share/nvim/lazy",
    },
    formatter_by_ft = {
        -- Standard formatters
        css = formatters.lsp,
        html = formatters.lsp,
        java = formatters.lsp,
        javascript = formatters.lsp,
        json = formatters.lsp,
        lua = formatters.lsp,
        markdown = formatters.prettierd,
        openscad = formatters.lsp,
        python = {
            formatters.remove_trailing_whitespace,
            formatters.black,
            formatters.ruff,
        },
        rust = formatters.lsp,
        scad = formatters.lsp,
        scss = formatters.lsp,
        sh = formatters.shfmt,
        terraform = formatters.lsp,
        typescript = formatters.prettierd,
        typescriptreact = formatters.prettierd,
        yaml = formatters.lsp,

        -- Custom and Conditional formatters
        myfiletype = formatters.shell({ cmd = { "myformatter", "%" } }),
        filetype1 = formatters.remove_trailing_whitespace,
        filetype2 = formatters.custom({
            format = function(lines)
                return vim.tbl_map(function(line)
                    return line:gsub("true", "false")
                end, lines)
            end
        }),
        go = {
            formatters.shell({
                cmd = { "goimports-reviser", "-rm-unused", "-set-alias", "-format", "%" },
                tempfile = function()
                    return vim.fn.expand("%") .. '.formatter-temp'
                end
            }),
            formatters.shell({ cmd = { "gofmt" } }),
        },
        javascript = {
            formatters.if_file_exists({
                pattern = ".eslintrc.*",
                formatter = formatters.eslint_d_fix
            }),
            formatters.if_file_exists({
                pattern = { ".prettierrc", ".prettierrc.*", "prettier.config.*" },
                formatter = formatters.prettierd,
            }),
            formatters.if_file_exists({
                pattern = ".prettierrc",
                formatter = formatters.prettierd,
                stop_path = function()
                    return "/my/custom/stop/path"
                end
            }),
        },
    },

    -- Fallback formatter
    fallback_formatter = {
        formatters.remove_trailing_whitespace,
        formatters.remove_trailing_newlines,
        formatters.prettierd,
    },

    run_with_sh = false,
})
