syntax on

filetype plugin on

autocmd FileType perl set tabstop=4|set shiftwidth=4|set expandtab|set softtabstop=4

" File types for perl
au BufRead,BufNewFile *.pm,*.pl,*.t,*.st set filetype=perl

" let tlist_perl_settings  = 'perl;c:constants;f:formats;l:labels;p:packages;s:subroutines;d:subroutines;o:POD'
let tlist_perl_settings  = 'perl;p:packages;s:subroutines;d:subroutines'
let tlist_make_settings  = 'make;m:makros;t:targets'

set foldmarker=over,back
set foldmethod=marker
