echo "Setting Up homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Setting Up OhMyZsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Setting up symlinks"
cd ~
ln -fs  ~/dotfiles/Brewfile
ln -fs  ~/dotfiles/tmux.config .tmux.config
ln -fs  ~/dotfiles/irbrc .irbrc
ln -fs  ~/dotfiles/ctags/ctags .ctags
ln -fs  ~/dotfiles/gitconfig .gitconfig
ln -fs  ~/dotfiles/gitignore .gitignore

echo "Append your zshrc setup to oh-my-zsh"
cat ~/dotfiles/zsh/zshrc >> .zshrc
source .zshrc

echo "Installing some useful things using brew"
brew bundle

echo "Install latest stable node with nvm"
nvm install --lts

echo "Install prompt with nvm"
npm install -g pure-prompt
npm install -g eslint-server
npm install -g typescript
npm install -g stylelint-langserver
npm install -g tslint-server
npm install -g tcss-langserver
npm install -g vscode-json-languageserver
npm install -g vscode-html-languageserver-bin

touch ~/.zsh_history

echo "Change default shell"
chsh -s $(which zsh)

echo "Install rubies"
rbenv install 2.5.1
rbenv local 2.5.1 && gem install bundler pry neovim rubocop map_by_method what_methods solargraph --no-ri --no-rdoc
rbenv global 2.5.1
pip3 install 'python-language-server'
