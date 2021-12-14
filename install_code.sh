# Install VS code:
which code &> /dev/null

if [ $? -ne 0 ]; then
  echo "Installing: VS code..."
  wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
  sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
  sudo apt update
  sudo apt install code  
else
  echo "Already installed: VS code"
fi

# create symlinks to settings and keybindings
 ln -sf ${PWD}//vscode/settings.json ${PWD}/../.config/Code/User/settings.json
 ln -sf ${PWD}//vscode/keybindings.json ${PWD}/../.config/Code/User/keybindings.json