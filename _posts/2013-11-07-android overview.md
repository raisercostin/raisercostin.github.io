Date: 2013-12-08 16:00
Title: Learning android development
Tags: howto, android, learning, journal
Slug: android
Updates: 2013-12-08, 2013-12-03, 2013-11-22, 2013-11-07

## Goals
I need a clear criteria of success so I should have a very simple problem to solve.

1. (done) Local - I should have an application on my phone
1. (done) Pages - Display 10 pages with images of a fairy tale.
1. (done) Voice - Play audio romanian voice on each page.
1. (done) Autoplay - After the current page audio finishes move to next page.
1. (done to test) No hide while listening
1. (done) read pages/images from assets uris
1. (done) Hide at the end
1. (done) single track: skip when image is changed
1. (done) single track: automatically change image when markers are reached
1. (done) pause/resume on click
1. (done) one thumbnail
1. (done) rename project to zdreanta
1. (done) Online - I should have an application on google play [Zdreanta - v1](https://play.google.com/store/apps/details?id=org.raisercostin.basm&hl=en)
1. (done) smaller size pics (png=>jpg)
1. (done) remove permissions for USB and network
1. (done) remove clear caches menu
1. (done) on volume up a red flash was displayed. now is removed
1. (done) menu with readByMyself, readToMe, readAutoplay
1. (done) jump to tale with the menu
1. (done) published on [appsurfer](https://www.appsurfer.com/apps/link/efef9120-4241-0131-512b-568ca32688dc) that runs android applications on cloud and display them in browser
1. (done) force landscape
1. (done) higher resolution pics
1. (done) better sync between sound and slides

1. page counter - to show progress (for parents not childrens)
1. replay current page on click anywhere
1. special visible button to go to menu to exit
1. recitator
1. Search Engine Optimization: poveste, poezie, basm, versuri, culcare, copii, invatam, diapozitiv, diafilm, romania, regimul, ceausescu, comunism
1. translate in english - [zdreanta - rig](http://fantasypieces.wordpress.com/2007/10/02/tudor-arghezi/) [rig2](http://thankgoodnessfor.blogspot.be/2010/05/rag-by-tudor-arghezi.html) [rig3](http://fantasypieces.typepad.com/translation/tudor_arghezi/)
1. Pause/Resume Autoplay - After the current page audio finishes move to next page.
1. Captions - Captions in romanian can be present.
1. Spelled captions - Captions and spelled voice.
1. Karaoke - Captions in romanian will show the current syllable (karaoke style).
1. Reuse diapozitive
1. The application is like a power point presentation engine. It has
  - content
     - images
     - audio
     - text
     - subtitles
     - animations
     - video
 - tools
     - autoplay
     - progress bar
     - play/resume
     - crowd content
         - record audio
         - record video
         - take pictures
         - draw
         - share
     - rewind 5/10/15 seconds to learn poetry
     - multitrack: images/audio/text
     - repeat tale/section/verse/word/syllables
     - split by sillabs
     - playlist
     - games?
1. display progress bar

## Process
1. Find a good book (see [resources](#resources))
2. Prepare tools
1. Install on Local Phone
1. Find a sample similar with this on internet and tweak it.

## Install
1. java
2. eclipse
3. [android sdk](http://developer.android.com/sdk/index.html)
4. [kies (drivers for the phone)](http://www.samsung.com/in/support/usefulsoftware/supportUsefulSwMobile.do)
5. 

## Resources

### Tools 
- [development console](https://play.google.com/apps/publish)
- [android asset studio](http://android-ui-utils.googlecode.com/hg/asset-studio/dist/index.html)
- beginners: [app inventor](http://appinventor.mit.edu/explore/) - generates a simple application

### Samples & Demos
1. [googleit](https://www.google.com/search?q=android+tutorial+image+slideshow)
1. [flipper1](http://www.androidbegin.com/tutorial/android-viewpager-gallery-images-and-texts-tutorial/)
2. [flipper2](https://github.com/javatechig/javatechig-android-ui/tree/master/ViewFlipperExample)
3. [flipper3](http://androidituts.com/android-viewflipper-example/)
4. http://www.androidhive.info/2013/09/android-fullscreen-image-slider-with-swipe-and-pinch-zoom-gestures/

### Prior knowledge
Since I have various level of understanding on different topics the evaluation of the utility of the resources/books is purely subjective. Probably the selection is influenced by my current level: Beginner, Junior, Senior, Expert on several topics: 

* general software development
* java
* mobile
* android

In my case I'm an experienced java developer with no experience on mobile/device development.


### Compiled resources
- **[goodreads popular books](http://www.goodreads.com/shelf/show/android)**
- [official android](http://developer.android.com)
- [stackoverflow android tag](http://stackoverflow.com/tags/android/info)
- [faq at coderanch](http://www.coderanch.com/how-to/java/AndroidFaq "faq at coderanch")
- [top 5 android books](http://www.learncomputer.com/best-android-books-top-5-choices-for-2013/)
- [other top](http://www.zenpush.com/the-best-android-development-books/)
- [top on stackoverflow](http://stackoverflow.com/questions/18483679/android-application-development-books)

### Various books

#### Not evaluated
1. Professional Android 4 Development - By Reto Meier
1. [Best to start with the official documentation](http://developer.android.com/tools/workflow/index.html)
1. Pro Android 4 - By Satya Komatineni, Dave MacLean
1. Programming Android: Java Programming for the New Generation of Mobile Devices - By Zigurd Mednieks, Laird Dornin, G. Blake Meike, Masumi Nakamura
1. Android Apps for Absolute Beginners
1. Beginning Android Application Development
1. Programming Android: Java Programming for the New Generation of Mobile Devices
1. Learn Java for Android Development
1. Android Wireless Application Development Volume II: Advanced Topics
1. The Busy Coder’s Guide to Advanced Android Development

#### Not recommended
1. Beginning Android 4 Development - By Wei-Ming Lee - all the code is doubled (Once in the solution once in why it works so the book is doubled by this. Doesn't provide explanations to why and what is happening but only you could copy paste this and you will see it works because of these low level details that you can't understand).


## Hands-on

### Settings
- Was important to get eclipse going to set ANDROID_SDK_HOME to c:\personal (it will create a .android\ folder where devices are stored)

### Decide supported version

- Android versions can be identified by [from source](http://developer.android.com/guide/topics/manifest/uses-sdk-element.html#ApiLevels)
 - name (2.x, 3.x, 4.x)
 - product code (Froyo, Gingerbread, Ice Cream Sandwich, JellyBean)
 - version (api level)
- check here to see the 
- decide what android [version you want to support](http://en.wikipedia.org/wiki/Android_version_history)
 - 2.x - mobile & tv?
  - Android 2.2–2.2.3 Froyo (API level 8)
  - Android 2.3–2.3.2 Gingerbread (API level 9/10)
 - 3.x - tablets
 - 4.x - mobile&tablets integrated
  - Android 4.0–4.0.2 Ice Cream Sandwich (API level 14/15)
  - Android 4.1 Jelly Bean (API level 16/17/18)

### Things I learned
- APNG is the animated PNG but is not standardized (more here http://www.instantfundas.com/2009/07/4-free-tools-to-create-animated-png.html, http://irfanview-forum.de/archive/index.php/t-129.html)
- animations might be better with http://developer.android.com/reference/android/graphics/drawable/AnimationDrawable.html
- folder structure http://developer.android.com/tools/projects/index.html#ApplicationProjects
- you can't directly show images since the memory constraints are very high: [you shoud read this official tutorial](http://developer.android.com/training/displaying-bitmaps/index.html)
- The most important concepts in android are the following
 - The entry point into an android application (an application being a zip with apk extension) is the AndroidManifest.xml. This manifest (simillar to the MANIFEST.MF in normal jars, web.xml in war files, plugin.xml in OSGI/eclipse) specifies declaratively application details like: main class, permissions needed. Like in osgi/war this allows to the container (android in this case) to know details about application without instatiation and/or execution.
 - An application has at least one type of action:
     - Activity - an UI that can do things
     - Service - collection of batch actions that can happen in background with lower priority
     - BroadcastReceiver - a task as a reaction to a signal/event coming from outside
     - ContentProvider - provide data to an external request
 - Applications interact easily through **Intent**s - An intent is a concept similar to a combination of URL and GET/POST data. An application receives data from outside through an intent that specify the action (url/uri in web terminology) and data(GET/POST parameters in web terminology).

### To Do
 
- Add scala integration [like described here](http://scala-forum.org/read.php?4,503,503)
- add guava library
- maybe http://engineering.linkedin.com/incubator/technology-behind-eatin-android-apps-scala-ios-apps-and-play-framework-web-services
- add unit tests
   - in external project http://cleancodedevelopment-qualityseal.blogspot.be/2013/04/testing-android-apps-with-junit-no-more.html
   - in the same project tests/src/ + add junit library => I don't know the implications on generated apk
- improve performance by ussing assets instead of resources
 - (http://stackoverflow.com/questions/19872887/populating-image-switcher-dynamically-android)
 - animation (http://developer.android.com/guide/topics/graphics/index.html)
 - store and use assets (https://xjaphx.wordpress.com/2011/10/02/store-and-use-files-in-assets/)
 
 
### Feedback (romanian)

#### ToDo

- buton play

#### Cons
- done - n-o poti face mai mica? gen optimize la poze? ca are 12mb.. si parca nu face prea multe pt 12mb 
- done -- pai sunt pnguri alea.... pot sa le fac jpg si gata
- done - si s-a mai ofticat un prieten ca cere aprobare pt modifica si delete content pe usb
- done - tehnic app asta n-ar trebui sa vrea nic *ca zicea la pornire parca ca n-am net
- done - (unknown reciter) ? nu e narator or so?
- done - ce-i caches aia? clear caches?
- done - volume up red flash
- done - e ametzitor, se misca prea repede imaginile (ce-i asta? e eroare pe mobilu meu sau e by design?) adik io cand ii citesc povesti lu' fiica-mea ne uitam la poze, analizam ce-i acolo punem mana si-i aratam urechea pleshuva si ochii de faianta, ai vazut speedu la youtube 6minute am cronometrat, la tine dureaza pe la 1min50 or so deci lejer de 3 ori mai repede
- done - alta chestie, cand o pornesc apare ecranu negru si in colt poza cu catzelu. de ce? tre sa inceapa direct povestea. de ce tre sa mai dau un click intr-o zona e ecranului 1/10 sa inceapa? ce? planuiesti sa pui mai multi catzei? if so, pune atunci catzeii in colt, pana atunci vreau sa dau click sa porneasca
- cred ca merge sa faci de genu un singur buton in dreapta or so dreapta jos rotund mare care sa fie o sageata si cand dai pe el sa treaca mai departe sa schimbe sliedul si cand schimba slideul, sa recite, gen dupa 0.5-1secunde dupa ce s-a schimbat sau imediat sa recite versu ala si cand dai click pe poza tap or so anywhere else adik on the screen sa repete


- ai facut localizare in playstore si pe romana? s-o localizezi si pe romana daca n-ai facut deja
- de-asta se repeta pozele acolo la prezentare

#### Constraints

- autoplay
- re autoplay
- slideuri pe strofe
- pauza artificiala dupa fiecare vers (in contra recitatoarei)
- e ok si 5 poze versus 30
- invatat poezie, adormit inainte de culcare, ajutor cu o foaie printata pt colorat a oricarui slide, citit pe silabe gen karaoke

#### Advices

- faptu ca esti in categoria new iti ofera exposure de 10 ori mai mare decat toata lista ta de contacte
- faci ceva sa fixezi viteza? vrei sa-ti dau 5 stelutze acu sau mai incolo?
- pai n-ai citit ma in sfaturile de produs chestii valuable ca nu e bine sa pornesti cu asta in cap din prima sa fie aplicatia strutzocamila

http://etimpu.com/tag/diafilm/