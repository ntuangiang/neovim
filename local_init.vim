" NERDTRee
let NERDTreeShowHidden=1

" html
" for html files, 2 spaces
autocmd Filetype html setlocal ts=2 sw=2 expandtab

" javascript
let g:javascript_enable_domhtmlcss = 1
let g:javascript_plugin_ngdoc = 1

" vim-javascript
augroup vimrc-javascript
  autocmd!
  autocmd FileType javascript setl tabstop=2|setl shiftwidth=2|setl expandtab softtabstop=2
  autocmd FileType typescript setl tabstop=2|setl shiftwidth=2|setl expandtab softtabstop=2
augroup END

" typescript
let g:yats_host_keyword = 1

" Enable blinking together with different cursor shapes for insert/command mode, and cursor highlighting:
au VimEnter,VimResume * set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50

if filereadable(expand("~/.config/nvim/local_coc.vim"))
  source ~/.config/nvim/local_coc.vim
endif

