## INDEX

- [INDEX](#index)
- [configuration](#configuration)
- [Github workflow](#github-workflow)
- [Working With Remotes](#working-with-remotes)
  - [Sending Commits](#sending-commits)
  - [Pulling Changes](#pulling-changes)
    - [`Git fetch`](#git-fetch)
  - [Forking a Repository](#forking-a-repository)
- [Pull Request](#pull-request)
  - [Staying In Sync With A Remote Repository](#staying-in-sync-with-a-remote-repository)
    - [Include Upstream Changes](#include-upstream-changes)
- [Squash Commits](#squash-commits)
  - [Force Pushing](#force-pushing)
- [Notes](#notes)

---

## configuration

```bash
git config --global user.name "user"
git config --global user.email "user@example.com"
```

---

## Github workflow

![github_workflow](./img/github_workflow.PNG)

---

## Working With Remotes

- the word `origin` is just the default name that's used when you git clone a remote repository for the first time.

- `git remote` command is used to create and manage remote repositories.
- `git remote add` is used to add a connection to a new remote repository.

- `git remote -v` displays both the shortname and the URL.

- command to create a connection from my local repository to the remote repository in github

  ```bash
  $ git remote add origin https://github.com/richardkalehoff/RichardsFantasticProject.git
  ```

---

### Sending Commits

- The `git push` command takes:

  - the shortname of the remote repository you want to send commits to
  - the name of the branch that has the commits you want to send

```bash
# send commits from a local repository to a remote repository.
git push <remote-shortname> <branch>
# or
git push origin master
```

- `origin/master` is called a tracking branch.
  - So the tracking branch origin/master is telling us that the remote origin has a master branch that points to commit 9b7d28f (and includes all of the commits before 9b7d28f).

---

### Pulling Changes

```bash
# retrieve the commits from the master branch on the origin remote repository.
git pull origin master
```

#### `Git fetch`

Git fetch is used to retrieve commits from a remote repository's branch but **it does not automatically merge the local branch with the remote tracking branch after those commits have been received**.

```bash
# retrieve the commits from the master branch on the origin remote repository.
git fetch origin master
```

- You can think of `git fetch` as half of a `git pull`. The other half of `git pull` is the merging aspect.

---

### Forking a Repository

In version control terminology if you `fork` a repository that means you duplicate it. Typically you fork a repository that belongs to someone else. So you make an identical copy of their repository and that duplicate copy now belongs to you.

- This concept of "forking" is also different from "cloning".

  - When you clone a repository, you get an identical copy of the repository. But cloning happens on your local machine and you clone a remote repository.
  - When you fork a repository, a new duplicate copy of the remote repository is created. This new copy is also a remote repository, but it now belongs to you.

- Forking is an action that's done on a hosting service, like GitHub.

---

## Pull Request

A pull request is a request to the original or source repository's maintainer to include changes in their project that you made in your fork of their project. **You are requesting that they pull in changes you've made**.

![pr](./img/pr.png)

---

### Staying In Sync With A Remote Repository

When working with a project that you've forked. The original project's maintainer will continue adding changes to their project. You'll want to keep your fork of their project in sync with theirs so that you can include any changes they make.

![pr](./img/pr1.png)
![pr](./img/pr2.png)

#### Include Upstream Changes

![pr](./img/pr3.png)
![pr](./img/pr4.png)

- To get commits from a source repository into your forked repository on GitHub you need to:

  - get the cloneable URL of the source repository

  - create a new remote with the `git remote add` command

    - use the shortname `upstream` to point to the source repository

  - fetch the new `upstream` remote

  - merge the `upstream`'s branch into a local branch

  - push the newly updated local branch to your origin repo

---

## Squash Commits

To squash commits together, we use the extremely powerful `git rebase` command.

- telling Git to use `HEAD~3` as the base where all of the other commits (`HEAD~2`, `HEAD~1`, and `HEAD`) will connect to.
  ```bash
  # move commits to have a new base
  git rebase -i HEAD~3
  ```
- The `-i` in the command stands for "interactive".

![rebase](./img/rebase.png)
![rebase](./img/rebase2.PNG)
![rebase](./img/rebase3.PNG)

- note: create a `backup branch` before rebasing, so that it's easy to return to your previous state. If you're happy with the rebase, then you can just delete the backup branch!

---

### Force Pushing

Using `git rebase` creates a new commit with a new SHA. When you try using `git push` to send this commit up to GitHub, GitHub knew that accepting the push would erase the three separate commits, so it rejected it. So you have to force push the commits through using `git push -f`

---

## Notes

- `Assign yourself`

  - When you???re assigned to an issue or pull request, it tells repository visitors and contributors that you'll be facilitating the conversation or task

- in `Github desktop` you can select things to commit instead of making all the changes in one commit
  - to do this : `Highlight the lines you want`
