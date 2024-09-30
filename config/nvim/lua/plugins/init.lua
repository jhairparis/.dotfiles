return {
    {
        "stevearc/conform.nvim",
        event = "BufWritePre", -- uncomment for format on save
        config = function()
            require "configs.conform"
        end,
    },

    {
        "neovim/nvim-lspconfig",
        config = function()
            require("nvchad.configs.lspconfig").defaults()
            require "configs.lspconfig"
        end,
    },

    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                -- Web
                "typescript-language-server",
                "tailwindcss-language-server",
                "html-lsp",
                "css-lsp",

                "prettierd",
                "eslint-lsp",
                -- Lua
                "lua-language-server",
                "stylua",
            },
        },
    },

    {
        "nvim-treesitter/nvim-treesitter",
        opts = function()
            local opt = require "nvchad.configs.treesitter"
            opt.ensure_installed = {
                "vim",
                "lua",
                "vimdoc",
                "regex",
                -- Web
                "javascript",
                "typescript",
                "tsx",
                "html",
                "css",

                -- "python",
            }
            return opt
        end,
    },

    {
        "github/copilot.vim",
        event = { "BufReadPre", "BufNewFile" },
    },

    {
        "goolord/alpha-nvim",
        event = "VimEnter",
        config = function()
            require "configs.alpha"
        end,
    },

    {
        "mfussenegger/nvim-lint",
        event = "VeryLazy",
        config = function()
            require "configs.lint"
        end,
    },

    {
        "rmagatti/auto-session",
        lazy = false,
        config = function()
            require("auto-session").setup {
                log_level = "error",
                auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
                auto_session_use_git_branch = false,

                -- auto_session_enable_last_session = false,

                -- ⚠️ This will only work if Telescope.nvim is installed
                -- The following are already the default values, no need to provide them if these are already the settings you want.
                session_lens = {
                    -- If load_on_setup is set to false, one needs to eventually call `require("auto-session").setup_session_lens()` if they want to use session-lens.
                    buftypes_to_ignore = {}, -- list of buffer types what should not be deleted from current session
                    load_on_setup = true,
                    theme_conf = { border = true },
                    previewer = false,
                },

                vim.keymap.set("n", "<leader>ls", require("auto-session.session-lens").search_session, {
                    noremap = true,
                }),
            }
        end,
    },

    {
        "windwp/nvim-ts-autotag",
        ft = {
            "javascript",
            "javascriptreact",
            "typescript",
            "typescriptreact",
            "html",
        },
        config = function()
            require("nvim-ts-autotag").setup()
        end,
    },
    {
        "NeogitOrg/neogit",
        event = "VeryLazy",
        dependencies = {
            "nvim-lua/plenary.nvim",  -- required
            "sindrets/diffview.nvim", -- optional - Diff integration

            -- Only one of these is needed, not both.
            "nvim-telescope/telescope.nvim", -- optional
        },
        config = function()
            require("neogit").setup()
        end,
    },
    {
        "folke/noice.nvim",
        event = "VeryLazy",
        opts = {},
        dependencies = {
            -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
            "MunifTanjim/nui.nvim",
            -- OPTIONAL:
            --   `nvim-notify` is only needed, if you want to use the notification view.
            --   If not available, we use `mini` as the fallback
            "rcarriga/nvim-notify",
        },
        config = function()
            require("noice").setup {
                lsp = {
                    signature = {
                        enabled = false, -- Disable signature help in Noice
                    },
                    -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
                    override = {
                        ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
                        ["vim.lsp.util.stylize_markdown"] = true,
                        ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
                    },
                },
                -- you can enable a preset for easier configuration
                presets = {
                    -- bottom_search = true, -- use a classic bottom cmdline for search
                    command_palette = true,       -- position the cmdline and popupmenu together
                    long_message_to_split = true, -- long messages will be sent to a split
                    inc_rename = false,           -- enables an input dialog for inc-rename.nvim
                    lsp_doc_border = false,       -- add a border to hover docs and signature help
                },
            }
        end,
    },
    {
        "kevinhwang91/nvim-ufo",
        event = "BufReadPost",
        dependencies = {
            "kevinhwang91/promise-async",
        },
        opts = {
            provider_selector = function()
                return { "treesitter", "indent" }
            end,
        },
    },
}
