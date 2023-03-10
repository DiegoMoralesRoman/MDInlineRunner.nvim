if exists('g:loaded_MDInlineRunner') | finish | endif 

let s:save_cpo = &cpo 
set cpo&vim

command! GetMDInline lua require'mdinlinerunner'.get()
command! RunMDSnippetUnderLine lua require'mdinlinerunner'.run_under_line()

let &cpo = s:save_cpo
unlet s:save_cpo

let g:loaded_MDInlineRunner = 1
