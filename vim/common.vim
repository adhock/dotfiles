call pathogen#infect()  

" Indentation
set shiftwidth=4
set expandtab
set tabstop=4
set autoindent

" make backspace work like most other apps
set backspace=2 

" Enable Syntax hightlight
syntax on

" Set line number
set number

" Set coma as map leader char
let mapleader = ","

" Activate the mouse
set mouse=a
" Toggle mouse mode
nnoremap <F12> :call ToggleMouse()<CR>

function! ToggleMouse()
    if &mouse == 'a'
    	set mouse=
    	echo "Mouse usage disabled"
    else
    	set mouse=a
    	echo "Mouse usage enabled"
    endif
endfunction

" Use ranger as vim file manager
function! Ranger()
  " Get a temp file name without creating it
  let tmpfile = substitute(system('mktemp -u'), '\n', '', '')
  " Launch ranger, passing it the temp file name
  silent exec '!RANGER_RETURN_FILE='.tmpfile.' ranger'
  " If the temp file has been written by ranger
  if filereadable(tmpfile)
    " Get the selected file name from the temp
    file
    let filetoedit = system('cat '.tmpfile)
    exec 'edit '.filetoedit
    call delete(tmpfile)
  endif
  redraw!
endfunction

nmap <leader>r :call Ranger()<cr>

nnoremap <F5> :GundoToggle<CR>

" NERDTree configuration
" let g:NERDTreeWinSize = 70
" let g:NERDTreeQuitOnOpen = 1
" map <silent> <F7> :NERDTreeToggle %:p:h<CR>

" BufExplorer configuration
" let g:bufExplorerShowRelativePath=0
" map <silent> <F6> :BufExplorer<CR>

" MiniBufExplorer configuration
map <Leader>e :TMiniBufExplorer<cr>
map <Leader>b :MiniBufExplorer<cr>
" let g:miniBufExplMapWindowNavArrows = 1
" let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplUseSingleClick = 1

" TagList
map <Leader>l :TlistToggle<cr>
let Tlist_Exit_OnlyWindow = 1
let Tlist_Show_One_File = 1
let Tlist_WinWidth = 50

" status line
" %t name
" %y type 
" %{&ff} file format
" %c column
" %l line
:set laststatus=2
":set statusline=%t\ %y\ format:\ %{&ff};\ [%c,%l]
if has("statusline")
 set statusline=%<%f\ %h%m%r%=%{\"[\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\").\"]\ \"}%k\ %-14.(%l,%c%V%)\ %P
endif

" Color Sheme
"colorscheme desert

source ~/.dotfiles/vim/perl.vim
set colorcolumn=80
hi ColorColumn ctermbg=darkgrey guibg=red
let g:ackprg="ack-grep -H --nocolor --nogroup --column --ignore-dir=.build --ignore-dir=.git --ignore-dir=.svn"
 
