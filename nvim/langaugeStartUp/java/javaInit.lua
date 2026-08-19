local autocmd = vim.api.nvim_create_autocmd
autocmd("FileType", {
    pattern = "java",
    callback = function()
        local root_dir = vim.fs.dirname(
            vim.fs.find({ 'pom.xml', 'src'}, { upward = true })[1]
        )
        print("Printed form JAVA IDE setup")
        local client = vim.lsp.start({
            name='eclipseJDTLS',
            cmd={'java',
                 '-Declipse.application=org.eclipse.jdt.ls.core.id1',
                 '-Dosgi.bundles.defaultStartLevel=4',
                 '-Declipse.product=org.eclipse.jdt.ls.core.product',
                 '-Dlog.level=ALL',
                 '-Xmx1G',
                 '--add-modules=ALL-SYSTEM',
                 '--add-opens',
                 'java.base/java.util=ALL-UNNAMED',
                 '--add-opens',
                 'java.base/java.lang=ALL-UNNAMED',
                 '-jar',
                 '/home/morehands/.local/share/nvim/lsp/jdtls/plugins/org.eclipse.equinox.launcher_1.6.400.v20210924-0641.jar',
                 '-configuration',
                 '/home/morehands/.local/share/nvim/lsp/jdtls/config_linux',
                 '-data',
                 './'
             },
             root_dir = root_dir,
        })
        vim.lsp.buf_attach_client(0, client)
        vim.treesitter.start() 
        vim.diagnostic.config({
            virtual_text = { current_line = true }
        })
    end
})
