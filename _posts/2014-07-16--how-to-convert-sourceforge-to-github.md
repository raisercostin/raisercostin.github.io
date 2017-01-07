---
Date: 2014-07-16
Title: Migrate sourceforge CVS project to github GIT project
Tags: git,cvs,sourceforge,github
Slug: how-to-convert-sourceforge-cvs-to-github-git
---

# Steps

## import entire project from cvs repository in sourceforge
mkdir ~/quickrex
cd ~/quickrex
rsync -av rsync://quickrex.cvs.sourceforge.net/cvsroot/quickrex/ ~/quickrex

## use git cvsimport to extract modules from local cvs repository
mkdir ~/quickrex-application
cd ~/quickrex-application/
git cvsimport -p x -v -d ~/quickrex I18N

## update local repository from remote github project (that was already created)
cd ~/quickrex-application/
git remote add origin https://github.com/raisercostin/quickrex-i18n.git
git pull origin master

## submit merged sources
git push origin master

PS. Based on http://ghantoos.org/2010/11/11/migrating-sourceforge-cvs-source-repository-to-github/