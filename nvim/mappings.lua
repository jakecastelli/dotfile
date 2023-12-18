---@type MappingsTable
local M = {}

M.general = {
  n = {
    ["<C-d>"] = { "<C-d>zz", "Stay center when move half page up", opts = { nowait = true } },
    ["<C-u>"] = { "<C-u>zz", "Stay center when move half page down", opts = { nowait = true } },
    ["<C-p>"] = { "<cmd> Telescope find_files follow=true <CR>", "Find files" },

    ["<leader>w"] = { "<cmd> w <CR>", "Save file" },
    ["<leader><leader>"] = { "<cmd> Telescope buffers <CR>", "Find buffers" },
    ["<leader>."] = { ":vertical resize +5<CR>", "Vertical resize +5" },
    ["<leader>,"] = { ":vertical resize -5<CR>", "Vertical resize -5" },

    ["<S-l>"] = {
      function()
        require("nvchad.tabufline").tabuflineNext()
      end,
      "Goto next buffer",
    },

    ["<S-h>"] = {
      function()
        require("nvchad.tabufline").tabuflinePrev()
      end,
      "Goto prev buffer",
    },

    ["gl"] = {
      function()
        vim.diagnostic.open_float { border = "rounded" }
      end,
      "Floating diagnostic",
    },
  },
  v = {
    ["J"] = { ":m '>+1<CR>gv=gv", "Move the current line up", opts = { nowait = true } },
    ["K"] = { ":m '<-2<CR>gv=gv", "Move the current line down", opts = { nowait = true } },
    [">"] = { ">gv", "indent" },
  },
  -- disabled = {
  -- n = {
  --   ["<S-b>"] = "",
  -- },
  -- },
}

-- more keybinds!

return M
