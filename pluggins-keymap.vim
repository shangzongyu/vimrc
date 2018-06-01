" ListToggle
let g:lt_location_list_toggle_map = '<leader>lq'
let g:lt_quickfix_list_toggle_map = '<leader>oq'

" dash
nmap <space>h :Dash<cr>

" NERDTree
nmap <space>nt :NERDTreeToggle<cr>

" NerdCommenter
" <leader>cl 注释
" <leader>cu 解注释

" buffer
nnoremap <silent> [b :bprevious<cr>
nnoremap <silent> ]b :bnext<cr>
nnoremap <silent> [B :bfirst<cr>
nnoremap <silent> ]B :blast<cr>

" quickfix
nnoremap <silent> [q :cprevious<cr> " 跳到上一个错误
nnoremap <silent> ]q :cnext<cr>     " 跳到下一个错误
nnoremap <silent> [Q :cfirst<cr>
nnoremap <silent> ]Q :clast<cr>

" location
nnoremap <silent> [l :lprevious<cr>
nnoremap <silent> ]l :lnext<cr>
nnoremap <silent> [L :lfirst<cr>
nnoremap <silent> ]L :llast<cr>

" tabs
nnoremap <silent> [t :tabprevious<cr>
nnoremap <silent> ]t :tabnext<cr>
nnoremap <silent> [T :tabfirst<cr>
nnoremap <silent> ]T :tablast<cr>

" airline
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>+ <Plug>AirlineSelectNextTab

" tags
nmap <leader>tn :tnext<CR>      " 正向遍历同名标签
nmap <leader>tp :tprevious<CR>  " 反向遍历同名标签

" gtags-cscope
noremap <silent> <leader>tcs :GscopeFind s <C-R><C-W><cr>
noremap <silent> <leader>tcg :GscopeFind g <C-R><C-W><cr>
noremap <silent> <leader>tcc :GscopeFind c <C-R><C-W><cr>
noremap <silent> <leader>tct :GscopeFind t <C-R><C-W><cr>
noremap <silent> <leader>tce :GscopeFind e <C-R><C-W><cr>
noremap <silent> <leader>tcf :GscopeFind f <C-R>=expand("<cfile>")<cr><cr>
noremap <silent> <leader>tci :GscopeFind i <C-R>=expand("<cfile>")<cr><cr>
noremap <silent> <leader>tcd :GscopeFind d <C-R><C-W><cr>
noremap <silent> <leader>tca :GscopeFind a <C-R><C-W><cr>
noremap <silent> <leader>tck :GscopeKill<cr>

" ale
nmap sp <Plug>(ale_previous_wrap) "普通模式下，sp前往上一个错误或警告，sn前往下一个错误或警告
nmap sn <Plug>(ale_next_wrap)

" quick-run
nmap <leader>r <Plug>(quickrun)
map <F10> :QuickRun<CR>

" indentGuide
nmap <silent> <leader>i :IndentGuidesToggle<cr> " 快捷键 i 开/关缩进可视化

" vim-choosewin {
nmap - <Plug>(choosewin)

" ycm
nnoremap gb :YcmCompleter GoToDeclaration<cr>
nnoremap gl :YcmCompleter GoToDefinition<cr>
nnoremap gx :YcmCompleter GoToDefinitionElseDeclaration<cr>
nnoremap gy :YcmCompleter GoToReferences<cr>

" UltiSnips 的 tab 键与 YCM 冲突，重新设定
let g:UltiSnipsExpandTrigger="<leader><tab>"
let g:UltiSnipsJumpForwardTrigger="<leader><tab>"
let g:UltiSnipsJumpBackwardTrigger="<leader><s-tab>"

" tabular
nnoremap <space>a= :Tabularize /=<CR>
vnoremap <space>a= :Tabularize /=<CR>
nnoremap <space>a/ :Tabularize /\/\//l2c1l0<CR>
vnoremap <space>a/ :Tabularize /\/\//l2c1l0<CR>
nnoremap <space>a, :Tabularize /,/l0r1<CR>
vnoremap <space>a, :Tabularize /,/l0r1<CR>
nnoremap <space>al :Tabularize /\|<cr>
vnoremap <space>al :Tabularize /\|<cr>
nnoremap <space>a<bar> :Tabularize /\|<cr>
vnoremap <space>a<bar> :Tabularize /\|<cr>
nnoremap <space>ar :Tabularize /\|/r0<cr>
vnoremap <space>ar :Tabularize /\|/r0<cr>

" MultiCursor
" Map start key separately from next key
let g:multi_cursor_start_key=';n'
let g:multi_cursor_start_word_key=';gn'

let g:muti_cursor_use_default_mapping = 0
let g:multi_cursor_next_key=';n'
let g:multi_cursor_prev_key=';p'
let g:multi_cursor_skip_key=';x'
let g:multi_cursor_quit_key='<Esc>'

nnoremap <C-n> :call multiple_cursors#quit()<CR>

" leaderF
let g:Lf_CommandMap = {'<Tab>': ['<ESC>']}
let g:Lf_ShortcutF = '<space>ff'
let g:Lf_ShortcutB = '<space>fb'
noremap <space>fr :LeaderfMru<cr>
noremap <space>fn :LeaderfFunction!<cr>
noremap <space>ft :LeaderfTag<cr>

" auto formater
noremap <space>f= :Autoformat<cr>

