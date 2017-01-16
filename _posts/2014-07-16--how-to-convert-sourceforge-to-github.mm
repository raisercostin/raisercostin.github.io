<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1410986111271" ID="ID_65866270" MODIFIED="1410986133249" TEXT="2014-07-16--how-to-convert-sourceforge-to-github">
<node CREATED="1410986141821" ID="ID_1336589055" MODIFIED="1410986141821" POSITION="right" TEXT="Date: 2014-07-16"/>
<node CREATED="1410986141823" ID="ID_1445021685" MODIFIED="1410986141823" POSITION="right" TEXT="Title: Migrate sourceforge CVS project to github GIT project"/>
<node CREATED="1410986141825" ID="ID_33137571" MODIFIED="1410986141825" POSITION="right" TEXT="Tags: git,cvs,sourceforge,github"/>
<node CREATED="1410986141826" ID="ID_961948249" MODIFIED="1410986141826" POSITION="right" TEXT="Slug: how-to-convert-sourceforge-cvs-to-github-git"/>
<node CREATED="1410986141827" ID="ID_669107753" MODIFIED="1410986141827" POSITION="right" TEXT="# Steps"/>
<node CREATED="1410986141828" ID="ID_1258204016" MODIFIED="1410986141828" POSITION="right" TEXT="## import entire project from cvs repository in sourceforge"/>
<node CREATED="1410986141830" ID="ID_289093363" MODIFIED="1410986141830" POSITION="right" TEXT="mkdir ~/quickrex"/>
<node CREATED="1410986141831" ID="ID_1783241350" MODIFIED="1410986141831" POSITION="right" TEXT="cd ~/quickrex"/>
<node CREATED="1410986141832" ID="ID_480387286" MODIFIED="1410986141832" POSITION="right" TEXT="rsync -av rsync://quickrex.cvs.sourceforge.net/cvsroot/quickrex/ ~/quickrex"/>
<node CREATED="1410986141834" ID="ID_1198347438" MODIFIED="1410986141834" POSITION="right" TEXT="## use git cvsimport to extract modules from local cvs repository"/>
<node CREATED="1410986141835" ID="ID_1897436104" MODIFIED="1410986141835" POSITION="right" TEXT="mkdir ~/quickrex-application"/>
<node CREATED="1410986141836" ID="ID_781697739" MODIFIED="1410986141836" POSITION="right" TEXT="cd ~/quickrex-application/"/>
<node CREATED="1410986141837" ID="ID_51459701" MODIFIED="1410986141837" POSITION="right" TEXT="git cvsimport -p x -v -d ~/quickrex I18N"/>
<node CREATED="1410986141838" ID="ID_941509943" MODIFIED="1410986141838" POSITION="right" TEXT="## update local repository from remote github project (that was already created)"/>
<node CREATED="1410986141839" ID="ID_145705495" MODIFIED="1410986141839" POSITION="right" TEXT="cd ~/quickrex-application/"/>
<node CREATED="1410986141841" ID="ID_1104667639" LINK="https://github.com/raisercostin/quickrex-i18n.git" MODIFIED="1410986141841" POSITION="right" TEXT="git remote add origin https://github.com/raisercostin/quickrex-i18n.git"/>
<node CREATED="1410986141842" ID="ID_1224184431" MODIFIED="1410986141842" POSITION="right" TEXT="git pull origin master"/>
<node CREATED="1410986141843" ID="ID_989414022" MODIFIED="1410986141843" POSITION="right" TEXT="## submit merged sources"/>
<node CREATED="1410986141844" ID="ID_1022203491" MODIFIED="1410986141844" POSITION="right" TEXT="git push origin master"/>
<node CREATED="1410986141844" ID="ID_713216769" LINK="http://ghantoos.org/2010/11/11/migrating-sourceforge-cvs-source-repository-to-github/" MODIFIED="1410986141844" POSITION="right" TEXT="PS. Based on http://ghantoos.org/2010/11/11/migrating-sourceforge-cvs-source-repository-to-github/"/>
</node>
</map>
