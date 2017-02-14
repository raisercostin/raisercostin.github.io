---
title: Release versioning
tags: Semantic Versioning
image: /2016-03-08--release-versioning.png
---
A set of practices related to versioning, branching and release strategy that worked for me in the past in several projects.

{{ more }}

# Versioning

- The convention for version numbers is major.minor.build.
- major is incremented when the public interface changes incompatibly. For example, a method is removed, or its signature changes. Clients using your library need to take care when using a library with a different major version, because things may break.
- minor is incremented when the public interface changes in a compatible way. For example, a method is added. Clients do not need to worry about about using the new version, as all the functions they are used to seeing will still be there and act the same.
- build is incremented when the implementation of a function changes, but no signatures are added or removed. For example, you found a bug and fixed it. Clients should probably update to the new version, but if it doesn’t work because they depended on the broken behavior, they can easily downgrade.

Semantic versioning

- The “manifest” for semantic versioning — [http://semver.org/](http://semver.org/)
- How to use semantic versioning — [http://www.jvandemo.com/a-simple-guide-to-semantic-versioning/](http://www.jvandemo.com/a-simple-guide-to-semantic-versioning/)
- More arguments about what it means and why to use semantic versioning can be found here [http://www.sitepoint.com/semantic-versioning-why-you-should-using/](http://www.sitepoint.com/semantic-versioning-why-you-should-using/)
- Some arguments against it or why is bad to be pedantic about it — [https://gist.github.com/jashkenas/cbd2b088e20279ae2c8e](https://gist.github.com/jashkenas/cbd2b088e20279ae2c8e)

# Branching

A very good resource on the branching strategy is [http://nvie.com/posts/a-successful-git-branching-model/](http://nvie.com/posts/a-successful-git-branching-model/)

We have the following branches

- master — the develop branch in article. We try to stabilize it from time to time to be able to “release” informally for some external stakeholders. In the “stabilization” period we freeze the merging between various feature branches
- feature/XXX-feature — feature branches around specific feature described by a JIRA ticket in general
- dev — a branch that could integrate various features that are might not be ready for a integration in master but still are needed to release a version through merge in releases.
- releases — Could also be called candidate branch. A branch where we try to keep it stable since we will `mvn release:prepare` from it. This means that the major and minor tags will be marked only on this branch.
- with this branch in place we can use the master branch as a development one where we try to integrate all features as soon as possible.
- stable — a branch needed by qa maintained through merges from release branch

# Releasing from maven

How to release from mvn

1. The [maven-release-plugin](http://maven.apache.org/plugins/maven-release-plugin/) tool will be used to release artifacts.
2. In order to prepare a release, please use command : mvn release:prepare -DautoVersionSubmodules=true -Dusername=username -Dpassword=password -Prelease. Read more [here](http://maven.apache.org/maven-release/maven-release-plugin/examples/prepare-release.html).   
At this step, the user should input the version for release, the name of the tag branch that will be created and the new SNAPSHOT version. By specifying -DautoVersionSubmodules=true, we instruct the parent version to be inherited by children projects.
3. In order to perform a release(upload artifacts to repository), please use the command : mvn release:perform -Prelease. Read more [here](http://maven.apache.org/maven-release/maven-release-plugin/examples/perform-release.html).
4. The process can be automated using Jenkins, read more [here](https://wiki.jenkins-ci.org/display/JENKINS/M2+Release+Plugin).

# How it works

Let’s see how this might work.

There is a need for releasing uumds-pdp-0.1.1 for two reasons, for example:

- I needed a pdp that is dependent on a fixed version of uumds-admin:*-ejb-persistence-*-data-0.1.1 that was released several days ago.
- I added an assembly that bundles together the components needed to be deployed on taxud-cas. This is necessary for docker.

All the current changes are internal releases (internal builds or “maven releases” how are called by Adrian). Internal releases are needed because we need several iterations (tries) with multiple candidate releases till we have one “good for external audience”. We could keep the major.minor version for the external audience where we clearly document what is expected to be delivered in them.

The current situation for pdp is:

- Two internal releases uumds-pdp-0.1.0 and uumds-pdp-0.1.1 that prepare the path for an official release: uumds-pdp-0.1.X
- We can’t say that the official release will be uumds-pdp-0.1 because we might need again to amend that next day.
- Is safer to assume that out of 20 internal releases: pdp-0.1.1 … pdp-0.1.20 some of them will be declared good for external audience: pdp-0.1.13 , pdp-0.1.17, pdp-0.1.19 and pdp-0.1.20
- After this(or in parallel) we could start working on pdp-0.2.X release.

![](/2016-03-08--release-versioning.png)

[Git](https://medium.com/tag/git?source=post)[Semantic Versioning](https://medium.com/tag/semantic-versioning?source=post)[Maven](https://medium.com/tag/maven?source=post)