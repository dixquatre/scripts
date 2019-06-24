### scripts
not by me, thanks to these youtube/github users:

* Luke Smith: [GitHub](https://github.com/lukesmithxyz) // [YouTube](https://www.youtube.com/channel/UC2eYFnH61tmytImy1mTYvhA)
* Budlabs: [GitHub](https://github.com/budlabs) // [YouTube](https://www.youtube.com/user/dubbeltumme)

### Setting up

```
git init --bare $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
echo "alias bin='/usr/bin/git --git-dir=$HOME/.config/scripts --work-tree=$HOME/.local/bin'" >> $HOME/.bashrc ## or you alias file
```

### Install your scripts onto a new system

```
echo "file to ignore" >> .gitignore ## (if you have to ignore file in your bin folder) 
git clone --bare <git-repo-url> $HOME/.dotfiles/scripts ## (or any foler you which to use)
alias bin='/usr/bin/git --git-dir=$HOME/.dotfiles/scripts/ --work-tree=$HOME/.local/bin'
bin checkout
bin config --local status.showUntrackedFiles no
```

### Script (all in one)

```
git clone --bare <git-repo-url> $HOME/.config/scripts
function bin {
   /usr/bin/git --git-dir=$HOME/.config/scripts --work-tree=$HOME/.local/bin $@
}
mkdir -p .config-scripts
bin checkout
if [ $? = 0 ]; then
  echo "Checked out config.";
  else
    echo "Backing up pre-existing dot files.";
    bin checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .config-scripts/{}
fi;
bin checkout
bin config status.showUntrackedFiles no
```

#### source


[The best way to store your dotfiles: A bare Git repository](https://www.atlassian.com/git/tutorials/dotfiles)

[Manage Dotfiles With a Bare Git Repository](https://harfangk.github.io/2016/09/18/manage-dotfiles-with-a-git-bare-repository.html)
