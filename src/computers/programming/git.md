# Git

[Git](https://git-scm.com/) is a free and open source distributed version control system.

## Aliases

I use a number of aliases (defined in my fish config) to optimize my Git workflow. Since I spend so much time in Git, cutting down on keystrokes really goes a long way towards saving time and maintaining my flow.

Here are the aliases that I am currently using:

| Alias   | Command                                 |
| ------- | --------------------------------------- |
| `gs`    | `git status`                            |
| `gc`    | `git commit`                            |
| `gca`   | `git add -A; and git commit`            |
| `gd`    | `git diff`                              |
| `gl`    | `git log`                               |
| `gp`    | `git pull`                              |
| `goops` | `git add -A; and git reset --hard HEAD` |

The nice thing about these aliases is that they still expose the entire Git interface. For example, I typically use `gca -m "My commit message"` to stage and commit all of my changes in one go.

I also have some additional commands for visualizing Git history defined as fish functions:

```sh
function gll
  git log --graph --date=short --pretty=format:'%Cgreen%h %Cblue%cd (%cr) %Cred%an%C(yellow)%d%Creset: %s'
end

function glll
  git log --graph --stat --date=short --pretty=format:'%Cgreen%h %Cblue%cd (%cr) %Cred%an%C(yellow)%d%Creset: %s'
end
```

These aliases may change over time, so check out my [dotfiles](https://github.com/maxdeviant/dotfiles) for any changes.

## Updating forks

After forking a repository you'll typically want to keep your fork updated with changes from the upstream repository.

You'll need to setup the upstream repository as a remote:

```sh
git remote add upstream git@github.com:<USERNAME>/<REPO>.git
```

Once you have an upstream remote, you can use the following commands to update your fork:

```sh
git fetch upstream
git checkout master
git merge upstream/master
```

## Git GUIs

While I spend the majority of my time in the Git CLI, I do find it handy to keep a graphical Git client around for certain tasks. I tend to prefer a GUI when I'm browsing through history or staging individual parts of a file.

My Git GUI of choice is [Sublime Merge](https://www.sublimemerge.com/). It's a phenomenal piece of software.
