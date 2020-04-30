# dotfiles
Linux dotfiles

Note about .gitignore.
* First we `git add` everything inside of a directory.
* Then do `git rm --cache` on files we don't want inside the repo but also need to be kept in the filesystem.
* Then add those removed files into .gitignore.

This is why there are files in directories ignored by .gitignore.
