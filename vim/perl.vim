syntax on

filetype plugin on

autocmd FileType perl set tabstop=4|set shiftwidth=4|set expandtab|set softtabstop=4

" File types for perl
au BufRead,BufNewFile *.pm,*.pl,*.t,*.st,*.pod set filetype=perl

" let tlist_perl_settings  = 'perl;c:constants;f:formats;l:labels;p:packages;s:subroutines;d:subroutines;o:POD'
" let tlist_perl_settings  = 'perl;p:packages;a:attribute;s:subroutines;d:subroutines;o:POD;f:functions'
let tlist_perl_settings='perl;p:package;u:use;r:role;e:extends;c:constant;a:attribute;s:subroutine;d:subroutines;v:privatesub;o:POD;f:functions'


set foldmarker==over,=back
set foldmethod=marker
