vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local keymap = vim.keymap
local defaults = { noremap = true, silent = true }

keymap.set("n", "<leader>pv", vim.cmd.Ex, defaults)

keymap.set("n", "<leader>qq", ":q<return>", defaults)

keymap.set("n", '<C-f>', ":%!goimports<return>",defaults)

-- Window navigation
keymap.set("n", "<C-h>", "<C-w>h", defaults)
keymap.set("n", "<C-j>", "<C-w>j", defaults)
keymap.set("n", "<C-k>", "<C-w>k", defaults)
keymap.set("n", "<C-l>", "<C-w>l", defaults)

keymap.set("n", "<leader>ms", ":Mason<return>", defaults)

keymap.set("n", "<leader>nf", function()
    local dir = vim.fn.expand("%:p:h")
    local filename = vim.fn.input("New file name (e.g., schema.cql): ")

    if filename ~= "" then
        vim.cmd("edit " .. dir .. "/" .. filename)
    else
        print("Filename cannot be empty.")
        return
    end

    vim.cmd("w")
end, defaults)
