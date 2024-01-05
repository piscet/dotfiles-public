" window
"" diable current keybind
nmap s <Nop>

"" move
nmap sh <C-w>h
nmap sj <C-w>j
nmap sk <C-w>k
nmap sl <C-w>l

"" swap window
nmap sH <C-w>H
nmap sJ <C-w>J
nmap sK <C-w>K
nmap sL <C-w>L

"" change window size
"nmap s+
"nmap s-
"nmap s<
"nmap s>


"" split
""" split new window
nmap sw :new<CR>
nmap sv :vnew<CR>

""" split same window
nmap sW :sp<CR>
nmap sV :vs<CR>

"" close window
nmap sq <C-w>q

"" netrw settings
nmap sf :e .<CR>

" tab
"" create tab
nmap sc :tabe<CR>

"" setting tab
nmap s, :tabe ~/.vimrc<CR> 
nmap s. :tabe ~/.dotfiles/.vim/plugin.vim<CR> 

"" move next tab
nmap <tab> :tabnext<CR>
nmap ss :tabnext<CR>
nmap sn :tabnext<CR>
nmap sp :tabprev<CR>

nmap s1 :tabnext 1<CR>
nmap s2 :tabnext 2<CR>
nmap s3 :tabnext 3<CR>
nmap s4 :tabnext 4<CR>
nmap s5 :tabnext 5<CR>
nmap s6 :tabnext 6<CR>
nmap s7 :tabnext 7<CR>
nmap s8 :tabnext 8<CR>
nmap s9 :tabnext 9<CR>

"" open selected path
nmap sgf <C-w>gf
nmap sgf <C-w>gF

