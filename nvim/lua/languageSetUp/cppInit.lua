local autocmd = vim.api.nvim_create_autocmd
autocmd("FileType", {
    pattern = "cpp",
    callback = function()
        local root_dir = vim.fs.dirname(
            vim.fs.find({ 'makefile', '.git' }, { upward = true })[1]
        )
        local client = vim.lsp.start({
            name='clangd',
            cmd={'clangd'},
             root_dir = root_dir,
        })
        vim.lsp.buf_attach_client(0, client)
        vim.treesitter.start() 
        vim.diagnostic.config({
            virtual_text = { current_line = true }
        })
        local bufnr = vim.api.nvim_get_current_buf()
        local bufopts = { noremap=true, silent=true, buffer=bufnr }
        nnoremap('gD', vim.lsp.buf.declaration, bufopts, "Go to declaration")
        nnoremap('gd', vim.lsp.buf.definition, bufopts, "Go to definition")
        nnoremap('gi', vim.lsp.buf.implementation, bufopts, "Go to implementation")

        nnoremap('<space>rn', vim.lsp.buf.rename, bufopts, "Rename")
    end
})

-- Helper function for creating keymaps
function nnoremap(rhs, lhs, bufopts, desc)
  bufopts.desc = desc
  vim.keymap.set("n", rhs, lhs, bufopts)
end
