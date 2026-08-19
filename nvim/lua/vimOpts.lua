--All vim setting 
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.opt.clipboard:append('unnamedplus')


-- This is for terminal transparency -------------------------------
vim.cmd [[   
    highlight Normal guibg=none   
]]
--vim.cmd [[   
--    highlight Normal guibg=none   
--    highlight NonText guibg=none   
--    highlight Normal ctermbg=none   
--    highlight NonText ctermbg=none
--]]
----------------------------------------------------------------------

vim.opt.guicursor = "n-v-c-sm:block,i-ci-ve:hor50,r-cr-o:hor20,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor"
-- Sets colors to line numbers Above, Current and Below  in this order


--------------------------------------------------------- Status  line ---------------------------------------------------------------
local function tabSeparator(sepHL, nextHL)
    local separTwo = "●■"
    local separ = "▀▄"
    return  string.format(
        "%s%s%s",
        sepHL,
        separ,
        nextHL
    )
end

local function git_branch()
    local branch = vim.fn.system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
    if string.len(branch) > 0 then
        return branch
    else
        return "☺  "
    end
end

local function statusline()
    local set_color_1 = "%#PmenuSel#"
    local branch = git_branch()
    local set_color_2 = "%#LineNr#"

    local sepa = tabSeparator(set_color_1, set_color_2) 

    local file_name = " %f"
    local modified = "%m "
    local align_right = "%="
    local fileencoding = " %{&fileencoding?&fileencoding:&encoding} "
    local fileformat = " %{&fileformat} "
    local filetype = " %y "
    local percentage = " %p%% "
    local linecol = " %l:%c"

    return string.format(
        "%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s",
        set_color_2,
        branch,
        sepa,
        file_name,
        modified,
        sepa,
        align_right,
        sepa,
        filetype,
        sepa,
        fileencoding,
        sepa,
        fileformat,
        sepa,
        percentage,
        sepa,
        linecol
    )

end

local function splitlines()
    return string.format(
    "%s",
    "vert:░"
    )
end

vim.opt.statusline = statusline()
vim.opt.fillchars = splitlines()
