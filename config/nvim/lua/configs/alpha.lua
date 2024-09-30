local status_ok, alpha = pcall(require, "alpha")
local datetime = os.date " %H:%M. "
local get_user = function()
  local user = ""
  if os.getenv "OS" ~= nil and os.getenv("OS"):match "^Windows" then
    user = os.getenv "USERNAME"
  else
    user = os.getenv "USER"
  end
  local s = string.upper(string.sub(user, 1, 1)) .. string.lower(string.sub(user, 2))
  return s
end

if not status_ok then
  return
end

local dashboard = require "alpha.themes.dashboard"

dashboard.section.header.val = {
  [[                                                                       ]],
  [[                                                                     ]],
  [[       ████ ██████           █████      ██                     ]],
  [[      ███████████             █████                             ]],
  [[      █████████ ███████████████████ ███   ███████████   ]],
  [[     █████████  ███    █████████████ █████ ██████████████   ]],
  [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
  [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
  [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
  [[                                                                       ]],
  [[                                                                       ]],
  "                       Hi " .. get_user() .. "," .. " It's" .. datetime,
}

dashboard.section.buttons.val = {
  dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
  dashboard.button("r", "󱀸  Restore session", ":SessionRestore <CR>"),
  dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
  dashboard.button("l", "  Recently used files", ":Telescope oldfiles <CR>"),
  dashboard.button("t", "  Find text", ":Telescope live_grep <CR>"),
  dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
}

local function footer()
  return "Don't Stop Until You are Proud..."
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
alpha.setup(dashboard.opts)
