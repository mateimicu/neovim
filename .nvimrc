" vim-plug plugin mentru manageriatul pluginurilor 
call plug#begin('~/.nvim/plugged')

" Color Schemes
Plug 'https://github.com/flazz/vim-colorschemes.git'

"""" Plugins

" Gundo
" Useful for undoing in a tree manner 
Plug 'https://github.com/sjl/gundo.vim.git' 
" Mapped the key to F5
nnoremap <F5> :GundoToggle<CR>
" Attention it has a bug


" Vim-Airline
" The line on the bottem with pretty colors
Plug 'https://github.com/bling/vim-airline.git'
" Make the line always vizible 
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme='badwolf'

" BufExplorer
" Creates buffers 
Plug 'https://github.com/jlanzarotta/bufexplorer.git'
" Help 
" \be - open normal 
" \be - toggle open/close
" \bs - open orisontal split
" \bv - open vertical split 

" Syntastic
" When you save a file it chesk for erros in the syntacs
Plug 'https://github.com/scrooloose/syntastic.git'

" T-Comment
" Helps commenting blocks of text
Plug 'https://github.com/vim-scripts/tComment.git'
" Remaping <C-_> <C-_> (from tcomment) to <S-c>  , <S> = Shift
map <S-c> <C-_><C-_>

" Vim-Surround
" Helps surrounding stuff 
Plug 'https://github.com/tpope/vim-surround.git'

" Vim-Machit
" Press <%> and it will take you to maching parrents or tag
Plug 'https://github.com/edsono/vim-matchit.git'

" Vim-Fugitive
" Git integration for nvim
Plug 'https://github.com/tpope/vim-fugitive.git'
" :Git [args] - executs ani git command
" :Gwrite - adds the current file to the staging area
" :Gread - reads the current file from the last commit
" :Gmore - renames the current file and oppens it 
" :Gcommit - commits the staging file
" :Gblame - shows on what commit every line was changed 
" % - is the current file 

" Vim-Indexed-Search
" Changes the search command and gives an output of how many it found
Plug 'https://github.com/henrik/vim-indexed-search.git'

" Vim-Repeat
" Using the dot <.> you can repeat the last command as a whole
Plug 'https://github.com/tpope/vim-repeat.git'

" Vim auto-pairs
" Insert or delete brackets, parens, quites in pairs
Plug 'https://github.com/jiangmiao/auto-pairs.git'

" Vim-Session
" Needs vim-misc to run
" Saves the session 
Plug 'https://github.com/xolox/vim-misc.git'
Plug 'https://github.com/xolox/vim-session.git'
" Auto save the session
let g:session_autosave = 'yes'
" we don't autoload session
let g:session_autoload = 'no'
" Uses :
" 	:SaveSession <name>
" 	:OpenSession <name>
" 	:CloseSession <name>
" 	:DeleteSession <name>

" EditorConfig
" Used for mantaining the code style
Plug 'https://github.com/editorconfig/editorconfig-vim.git'
" Making sure it works with fugitive (git integration)
let g:EditorConfig_exclude_patterns = ['fugitive://.*']

" Tabular
" Makes an alignment based on a pattern
Plug 'https://github.com/godlygeek/tabular.git'
" Uses 
" 	:Tab /regex pattern to aline too
" Or
" 	:Tab /regex pattern\zs 
" 	this eximne allines afther the caracter afther the pattern leaving the
" 	pattern allone 

" Vim-GitGutter
" Shows git diff on the fille
Plug 'https://github.com/airblade/vim-gitgutter.git'

" Vim-EasyMotion
" For moving betwen words 
Plug 'https://github.com/Lokaltog/vim-easymotion.git'
" Uses 
" 	\\w     to look at all words
" 	\\W 	to look at words separeted with a space
" 	\\f	to search for a caracter 

" Clever-f
" Finding characters
Plug 'https://github.com/rhysd/clever-f.vim.git'
" Usage
" 	f{char}		- go to the next apparence of {char} on the right 
" 	F{char}		- go to the next apparence of {char} on the left
"	t{char}		- go TILL the next apparence of {char} on the right
"	T{char}		- go TILL the next apparence of {char} on the left

""" Togglable panels

" NeardTree
" For looking at the tree structure
Plug 'https://github.com/scrooloose/nerdtree.git'
" Mapping the neardTree toggle to F2
map <F2> :NERDTreeToggle<CR>


call plug#end()



" Remapinc CTRL + W + (h, j, k, l) to CTRL +(h, j, k, l) 
" for controlling the windows
map <C-h> <C-W>h
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-l> <C-W>l
" Remaping comenzile pentru resizing Windows  
map <S-k> <C-W>+ 
map <S-j> <C-W>- 
map <S-h> <C-W>< 
map <S-l> <C-W>> 




