# create ~/.ssh folder.
mkdir -p ~/.ssh
chmod 700 ~/.ssh

# create key pair, then add ssh key to GitHub settings.
ssh-keygen -t rsa