# homebrew-gittown

This repository is the Homebrew tap for <a href="https://github.com/Originate/git-town" target="_blank">Git Town</a>.
It allows users to install Git-Town using Homebrew.

#### Authors
* <a href="https://github.com/jiexi" target="_blank">Jiexi Luan</a>
* <a href="https://github.com/kevgo" target="_blank">Kevin Goslar</a>


## Releasing a new version

* create a new release at <a href="https://github.com/Originate/git-town/releases" target="_blank">github.com/Originate/git-town/releases</a>
* fork this repo into your private account
* bump the version numbers in _git-town.rb_ and push to Github

```shell
brew unintall git-town
brew untap Originate/gittown
brew tap kevgo/gittown
brew install git-town
```

* see the mismatching SHA and copy the correct one into the repo (the 'actual' one)
* augment the commit, `git push --force`
* make a pull request against Originate/homebrew-gittown and merge


```
brew untap kevgo/gittown
brew tap Originate/gittown
brew install git-town
```

* announce the new release to the world
