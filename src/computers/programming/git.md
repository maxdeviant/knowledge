# Git

[Git](https://git-scm.com/) is a free and open source distributed version control system.

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
