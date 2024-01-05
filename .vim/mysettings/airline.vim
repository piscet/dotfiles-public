let g:airline_theme='molokai'
"let g:airline_theme='tomorrow'
"let g:airline_theme='base16'
let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#buffer_idx_mode=1
let g:airline#extensions#branch#enabled=1

let g:airline_mode_map = {
	\ 'n'  : 'Normal ',
	\ 'i'  : 'Insert ',
	\ 'R'  : 'Replace',
	\ 'c'  : 'Command',
	\ 'v'  : 'Visual ',
	\ 'V'  : 'V-Line ',
	\ '⌃V' : 'V-Block',
	\ }

let g:airline#extensions#tabline#buffer_idx_format = {
	\ '0': '0 ',
	\ '1': '1 ',
	\ '2': '2 ',
	\ '3': '3 ',
	\ '4': '4 ',
	\ '5': '5 ',
	\ '6': '6 ',
	\ '7': '7 ',
	\ '8': '8 ',
	\ '9': '9 '
	\}

