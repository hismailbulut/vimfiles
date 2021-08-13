if !exists('vimfilesPath')
	let vimfilesPath = expand('<sfile>:p:h')
endif

execute 'source ' . vimfilesPath . '/init.vim'
