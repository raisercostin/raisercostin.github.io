---
title: Export your OSQA articles and comments
tags: osqa,dzonesoftware,deprecated,export,import,markdown,ownyourdata,ownyourblog,ownyourcomments
image: 2017-01-18--how-to-export-old-osqa-articles-and-comments-osqa.png
---
![own your data osqa](/2017-01-18--how-to-export-old-osqa-articles-and-comments-osqa.png)

I had an osqa hosted solution. Unfortunately the project is deprecated now.
I created a solution to #ownyourarticles #ownyourcomments.
{{ more }}

 - osqa project: The old www.osqa.net OSQA was "deprecated" and now is redirected to www.dzonesoftware.com that sells AnswerHub.
 - osqa downloads: Is hard to find any link to a downloadable archive with the osqa project. 
 - osqa on github: https://github.com/OSQA/osqa
 - incomplete dockering:  https://github.com/vinomaster/osqa-docker

# Export from mysql database to a single file

I created this query to "export" in a jekyll format all comments from an osqa exported database.

```sql
SELECT
	concat('---'
		,'\nslug: article',forum_node.id
		,'\ndate: ',added_at
		,'\ntitle: ',title
		,'\nauthor: ',username,'<',email,'>'
		,'\ntags: ',replace(tagnames,' ',',')
		,'\ntype: ',node_type
		,'\ntoslug: article',coalesce(parent_id,'')
		,'\n---'
		,'\n',body) AS `article`
FROM
	forum_node
		INNER JOIN auth_user
		ON forum_node.author_id = auth_user.id
WHERE
	(state_string <> '(deleted)')
```

The output is something like the following `2017-01-18--all.md`

```
---
slug: 1
date: 2012-01-29 15:34:01
title: What is the best monetary system invented til now?
author: author1
tags: currency,monetary,system
type: question
toslug: 
---
<p>The current monetary systems have different problems.
What is the best monetary system for the entire planet?
One currency or multiple, gold or something else?
What is the best monetary system for a state, for a company, for a circle of friends?</p>
---
slug: 2
date: 2012-01-29 15:36:15
title: 
author: author2
tags: 
type: answer
toslug: 1
---
<p>Try bitcoins: <a href="http://www.weusecoins.com/">http://www.weusecoins.com/</a></p>
<p>In contrast, Bitcoins are like cash - seizing them requires access to your private keys, which could be placed on a USB stick, thereby enjoying the full legal and practical protections of physical property.</p>
---
slug: 3
date: 2012-01-29 15:48:11
title: How can a city reduce to zero the number of stray dogs on the streets?
author: author3
tags: city,animals,dogs,stray
type: question
toslug: 
---
<p>There are two problems with stray dogs:
 1. they might be aggresive and when they are the cost is huge, going to deaths of people
 2. without control, the usual case, they tend to have a growing population.</p>
<p>That's why the number of dogs on the streets must be reduced to zero to solve both problems.
If you solve only the second problem, the growing population you still might have for a period of time the first problem, which might be sufficient for people to ask for drastic solutions.</p>
<p>So, what is the perfect solution?</p>
---
slug: 4
date: 2012-01-29 18:20:22
title: What is the best election system that we have till now?
author: author3
tags: global,election,system
type: question
toslug: 
---
<p>We are the basic characteristics of an election system?
What are the usual trade-offs in such systems?
What are the tools, algorithms that solve such problems?</p>
---
slug: 5
date: 2012-01-30 08:16:21
title: 
author: author3
tags: 
type: answer
toslug: 1
---
<p>If i remember correctly, Bitcoin has been hacked:
<a href="http://www.dailytech.com/Inside+the+MegaHack+of+Bitcoin+the+Full+Story/article21942.htm">http://www.dailytech.com/Inside+the+MegaHack+of+Bitcoin+the+Full+Story/article21942.htm</a></p>
<p>However, i think first we need to ponder whether having anonymous money (such as cash or bitcoins) is the way to go. This is what money launderers are doing: obtaining money illegally, then use powerful feature of money's anonimity to become legit, and even respected, first class citizens.</p>
---
slug: 6
date: 2012-01-30 16:03:20
title: 
author: author4
tags: 
type: answer
toslug: 1
---
<p>Maybe we should first identify and define the problems of the current monetary system. </p>
<p>One idea would be to see where it all started: take the simplest possible monetary system and see what the problems were, how they were solved and retrospect if those solutions were correct or if a bigger problem was masked into said solution. A start in this direction would be this book: "Globalizing Capital: A History of the International Monetary System (Second Edition)" by Barry Eichengreen.</p>
<p>More details here:</p>
<ul>
<li><a href="http://press.princeton.edu/titles/8753.html">Princeton Press</a></li>
<li><a href="http://www.amazon.com/Globalizing-Capital-History-International-Monetary/dp/0691139377/ref=sr_1_1?ie=UTF8&amp;qid=1327957045&amp;sr=8-1">Amazon.com</a></li>
</ul>
<p>Upload sites are more and more cautious these days, so the pdf took a little digging. I am unaware if I am allowed to put a link to it here, but I will email it upon request.</p>
---
slug: 10
date: 2012-01-31 09:39:18
title: 
author: author3
tags: 
type: comment
toslug: 5
---
<p>It looks like was not hacked, but the some systems of some owners where hacked.</p>
```

# Extract independent articles from file

```
csplit --prefix=2017-01-18--article --suffix-format=%02d.md 2017-01-18--all.md "/^slug:/-1" "{*}"
```

# Test in jekyll

```
bundle exec jekyll serve
```


Then transform.sh file will help to split the articles in folders with their own comments.

	#!/bin/bash
	regextractor () {
		perl -E 'undef$/;$_=<>;($v1)= $_ =~ /'$1'/m;print "$v1";' <$2
	}

	for i in *.md
	do
		mydate=`regextractor "^date:\s*(\S{10}).*$" $i`
		mytitle=`regextractor "^title:\w*(.*)\s*$" $i`
		myslug=`regextractor "^slug:\s*(\S*)\s*$" $i`
		toslug=`regextractor "^toslug:\s*(\S*)\s*$" $i`
		type=`regextractor "^type:\s*(\S*)\s*$" $i`
		#echo found "mydate $mydate-type $type-toslug $toslug-myslug $myslug"
		#echo found "mydate$mydate -date"
		#echo found "type$type -type"
		#echo found "toslug$toslug -toslug"
		#echo found "myslug$myslug -myslug"
		if [ $type == "question" ]; then
			article=$myslug
			echo "mv $i $article/$mydate-$toslug.md"
			mkdir $article
			mv $i $article/$mydate-$article.md
		else
			article=$toslug
			echo "mv $i $article/$mydate-$type-$myslug.md"
			mv $i $article/$type-$myslug.md
			echo "{% include_relative $type-$myslug.md %}" | tee -a $article/*-$article.md
		fi
	done
