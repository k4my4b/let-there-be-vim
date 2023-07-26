require("defaults.override")

local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'

-- Install lazy.nvim if it's not already installed 
if not vim.loop.fs_stat(lazypath) then
	if vim.fn.executable('curl') == 0 then		
		vim.notify_once(
			"Couldn't find curl, is it installed on your system?", 
			vim.log.levels.ERROR
		)
		return 1
	end

	if vim.fn.executable('tar') == 0 then
		vim.notify_once(
			"Couldn't find tar, is it installed on your system?",
			vim.log.levels.ERROR
		)
		return 1
	end

	local lazyurl = "https://github.com/folke/lazy.nvim/archive/refs/tags/stable.tar.gz"
	local curlCmd = string.format("curl -sfL %s", lazyurl)
	local tarCmd = string.format("tar -xz --one-top-level=%s --strip-components=1", lazypath)

	print("Downloading lazy.nvim from upstream")

	-- TODO handle results/failure
	local result = vim.fn.system(curlCmd .. " | " .. tarCmd)
end

vim.opt.rtp:prepend(lazypath)

-- All plugins under ./lua/plugins/* get picked up by this.
-- 'plugins' isn't a special or reserved name it simply refers
-- to the 'plugins' directory under ./lua, it could be named 
-- anything you like. 
require('lazy').setup('plugins')
