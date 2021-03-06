local snip_ok, ls = pcall(require, "luasnip")
if not snip_ok then return end

-- some shorthands...
local snip = ls.snippet
local node = ls.snippet_node
local text = ls.text_node
local insert = ls.insert_node
local func = ls.function_node
local choice = ls.choice_node
local dynamicn = ls.dynamic_node

local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
-- jump forward in snippet
keymap("i", "<c-j>", "<cmd>lua require'luasnip'.jump(1)<CR>", opts)
keymap("s", "<c-j>", "<cmd>lua require'luasnip'.jump(1)<CR>", opts)
-- jump backward in snippet
keymap("i", "<c-k>", "<cmd>lua require'luasnip'.jump(-1)<CR>", opts)
keymap("s", "<c-k>", "<cmd>lua require'luasnip'.jump(-1)<CR>", opts)

ls.add_snippets(nil, {
    all = {
        snip({ trig = "comm", namr = "Big comment", dscr = "Big comment" },
             { text({"# -------------------------------", "#  "}),
               insert(1, "comment"), 
               text({"", "# -------------------------------"}),
               insert(0)
             })
    },
})


