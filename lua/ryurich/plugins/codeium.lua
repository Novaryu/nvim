return {
	'Exafunction/codeium.vim',
	event = 'BufEnter',
	config = function ()
		vim.keymap.set('i', '<C-CR>', function () return vim.fn['codeium#Accept']() end, { expr = true, silent = true })
		vim.keymap.set('i', '<C-Tab>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true, silent = true })
		vim.keymap.set('i', '<C-S-Tab>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true, silent = true })
		vim.keymap.set('i', '<C-c>', function() return vim.fn['codeium#Clear']() end, { expr = true, silent = true })
	end
}
