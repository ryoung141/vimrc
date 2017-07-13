#simple bash script to install pathogen on new machine/new environment
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
    curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cd ~/.vim/bundle/ && git clone --recursive https://github.com/davidhalter/jedi-vim.git
cd ~/.vim/bundle
git clone git://github.com/tpope/vim-fugitive.git
vim -u NONE -c "helptags vim-fugitive/doc" -c q
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
git clone https://github.com/Xuyuanp/nerdtree-git-plugin.git ~/.vim/bundle/nerdtree-git-plugin
git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline
git clone https://github.com/vim-airline/vim-airline-themes ~/.vim/bundle/vim-airline-themes
git clone https://github.com/Townk/vim-autoclose.git ~/.vim/bundle/vim-autoclose
git clone https://github.com/rakr/vim-one.git ~/.vim/bundle/vim-one
git clone https://github.com/NLKNguyen/papercolor-theme.git ~/.vim/bundle/papercolor-theme
ln -sf ~/vimrc/vimrc ~/.vimrc
