#!/bin/bash
cd ~
#
# SSH
#

git clone https://henryqrm@bitbucket.org/henryqrm/.ssh.git

# ssh-keygen -t rsa -b 4096 -C "henryqrm@gmail.com"
eval "$(ssh-agent -s)"
chmod 400 ~/.ssh/id_rsa
ssh-add ~/.ssh/id_rsa

#
#
#
git clone --recurse-submodules -j8 git@github.com:henryqrm/my-dotfiles.git /tmp/my-dotfiles
rsync -azh /tmp/my-dotfiles/ ~/
rm -fR /tmp/my-dotfiles/

sudo usermod -s /usr/bin/zsh $USER

y boostnote unclutter newaita-icons-git google-chrome firefox-developer-edition android-sdk-platform-tools gitflow-avh nodejs nvm virtualbox virtualbox-guest-modules-arch virtualbox-guest-modules-arch docker docker-compose
sudo npm i -g npm n http-serve concurrently jest nock mocha


echo fs.inotify.max_user_watches=524288 | sudo tee /etc/sysctl.d/40-max-user-watches.conf && sudo sysctl --system
mirror
update
reboot