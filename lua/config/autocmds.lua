-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- disable comment on new line
vim.api.nvim_create_autocmd("FileType",
{
	pattern = "*",
	callback = function()
		vim.opt.formatoptions:remove { "c", "r", "o" }
	end,
	desc = "Disable New Line Comment",
	--group = general,
})

vim.api.nvim_create_autocmd("VimEnter",
{
	callback = function()
		vim.cmd("inoremap <CR> <CR>.<BS>")
	end
})

__AI_ENABLED = true
vim.api.nvim_create_user_command("ToggleCopilot", function()
	if __AI_ENABLED then
		vim.cmd("Copilot disable")
		__AI_ENABLED = false
	else
		vim.cmd("Copilot enable")
		__AI_ENABLED = true
	end
	vim.notify('copilot enabled: ' .. tostring(__AI_ENABLED))
end, {})
