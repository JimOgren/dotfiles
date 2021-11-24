# Install miniconda
echo "Installing Miniconda3"
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
sudo chmod +x Miniconda3-latest-Linux-x86_64.sh
./Miniconda3-latest-Linux-x86_64.sh

# Select no when prompted of conda init

# Add the following to bashrc:
#source ~/miniconda3/etc/profile.d/conda.sh
#if [[ -z ${CONDA_PREFIX+x} ]]; then
#    export PATH="~/conda/bin:$PATH"
#fi


# Then run the following to add to conda config:
#conda config --set env_prompt: '({name}) '
#conda config --set auto_activate_base: false