-- Filename: ~/github/dotfiles-latest/neovim/neobean/init.lua
-- ~/github/dotfiles-latest/neovim/neobean/init.lua

-- We're passing an env var from kitty, you can print it with:
-- :lua print(vim.env.NEOVIM_MODE)
-- Here we capture the environment variable to make it accessible to neovim
--
-- NOTE: To see all the files modified for skitty-notes just search for "neovim_mode"
vim.g.neovim_mode = vim.env.NEOVIM_MODE or "default"

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Load custom highlights, I tried adding this as an autocommand, in the options.lua
-- file, also in the markdownl.lua file, but the highlights kept being overriden
-- so this is the only way I was able to make it work
-- Require the colors.lua module and access the colors directly without
-- additional file reads
require("config.highlights")
