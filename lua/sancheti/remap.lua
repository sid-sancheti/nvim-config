vim.g.mapleader = " "
vim.keymap.set("n", "<leader>er", vim.cmd.Ex)

-- Define mappings
local mappings = {
    ["n"] = {
        ["<Leader>o"] = "o<Esc>0\"_D",
        ["<Leader>O"] = "O<Esc>0\"_D",
    }
}

-- Apply mappings
for mode, mode_mappings in pairs(mappings) do
    for key, mapping in pairs(mode_mappings) do
        vim.api.nvim_set_keymap(mode, key, mapping, { noremap = true, silent = true })
    end
end

