---
Date: 2014-03-11
Title: How to debug your health issues - engineer style
Tags: health,cold,flu,allergy,engineering,debugging,Oscars,binarySearch,divideAndConquer,algorithms
Slug: health-debugging--engineer-style 
---

What all these tags have in common: health, cold, flu, allergy, engineering, debugging, Oscars, attendee list, algorithms, binary search, divide and conquer?
What do I know till now (2014-03-11 - 36 years old):

## Health issues

### Catching cold, flu or allergy
There are a lot of symptoms that are connected and usually people don't bother to differentiate between them.
Several links follow, maybe I will have time to make a synthesis.

- [cold flu allergies](http://lmgtfy.com/?q=cold+flu+allergies)
- [http://www.webmd.com/cold-and-flu/cold-guide/flu-cold-symptoms](http://www.webmd.com/cold-and-flu/cold-guide/flu-cold-symptoms)
- [http://www.cdc.gov/flu/about/qa/coldflu.htm](http://www.cdc.gov/flu/about/qa/coldflu.htm)
 
### How you get it

#### Traditional explanations
You might find different explanations for this starting from older people like we have in Romania (and it seems that Greeks also have [them](http://www.buzzfeed.com/georgiebradley/30-signs-you-were-raised-by-greek-parents-lqu6)) like:

- You genuinely believe in the curse of the evil eye
- Walking barefoot on marble floors means you’ll get a sore throat.
- If you eat ice-cream you will get a sore throat.
- If you open multiple windows you will get sick.
- If you run you will sweat and guess what you will get sick.
- If you are a girl and stay on the ground you will get sick.
- Not enough sleep

Rest assured in a lot of countries you don't get a flu like this.

#### Scientific explanations
You get 

- flu from flu viruses
- cold from cold viruses
- allergy from allergens

The general answer is that you've got an infection that triggered your defense system: viruses(life forms) or allergens(inmate objects)

### How often
If you find yourself that you catch cold more than one time per year you should realize that that is not normal.

## Software Engineering

### Debugging 1
Now that you acknowledged that is not normal you may want to understand what is happening. Are you having a cold, flu or an allergy? 

In software we have a process called debugging through which we find errors in the program. A program is a complex beast, could be written by a lot of people, days, months or even years ago and the mistake could be a simple character that triggers major problems. We must find that simple mistake and the process of finding it is called debugging.

How do we debug our health issue?

### Searching algorithms 1
In computer science one of the first things that you might learn is about algorithms. Algorithms are very clear lists of steps to be applied (automatically) on some initial data to get some final data as a result. One of the first such algorithm is one for searching a number in a sorted list. So the initial data is a number and a list of numbers that go from the smallest to the biggest. The final data is a response like yes, the number is in the list, no the number is not in the list.

## Oscars invitation list
Since the "searching a number in a sorted list" might sound too technical or geekish and by all means I want to be cool lets find a similar but more important problem.

At Oscars 2014 your job will be to filter people at the entrance. Since nobody will trust your gut on this a long list is compiled before and you will need just to be sure that only the people on the list will be accepted. Due to Oscars popularity you realize that this list will have hundreds of attendees.

What you will do?

### Search in the importance list
Some might think that a good solution is to filter them by importance. With this <del>Leonardo DiCaprio</del>Matthew McConaughey will be found very fast at the beginning where is searched first while the others will be found later. The least important one will have to wait till is found the last on the final page after a full scan of the entire list.

This solution has the disadvantage that for each person you must screen out all the names before. In medium you will search for half of the list (considering that the least important ones still want to participate to the Oscar night with the same probability as the important ones).
The advantage is that the ones at the beginning of the list will be satisfied that they don't need to wait too long.

### Search in the alphabetical list
Most of us know that searching in alphabetical lists is much faster. In this case you should order all the Oscars attendees by their name and you should search each of them doing a binary search. This means that in order to find Leonardo you will not need to full scan all the persons that have the name starting with A to M because you could directly jump to letter M. How do you directly jump to letter M? By finding a page in the middle of the list. Let's say you find H. Then you clearly know that Leo cannot have his name before H, so you immediately discard the searching need in the initial pages from A to H without scanning them at all. This is a huge gain and everyone will be happy to be found very fast.

## Software Engineering 2

### Binary search 2
In computer science the search in the alphabetical list has a name. The algorithm is called the binary search algorithm. Is called like that because at each step you *split* in two(so binary) the *searching space*(the entire list at the beginning) according to a *pivot*(the name you find in the middle page).

What you might not realize when you are taught the binary search algorithm is that this algorithm is used in a lot of other places:

- the game of guessing a number between 1 and 100 - where you should "guess" always with the number in the middle of the remaining interval)
- finding a page with a specific number in a book
- find a bug in a software system

So, how do you find a *bug* in your system?

### Debugging 2
You can safely not read this section if you're not interested of how bugs are discovered in a software system.

We are back to debugging. For debugging we can always apply the binary search algorithm to find the issue.
If you assume that your system have only one bug then there is a single place where the bug must exist.
Having this in mind we understand that the execution of the program have two phases: everything that is executed before the bug/issue/mistake and second everything that is executed after the bug. At the beginning we can observe the system and we should see that everything is ok, at the end we should observe some unexpected results. This means that at some moment the results where affected. We can split the *searching space* in two by trying to observe the system at a moment in the middle of the processing. If we manage to do that we can observe two things: system has good expected intermediate results (this will mean that the bug will appear later than that moment) or the system has a strange intermediate result and this will mean that the bug already affected the results so it must be searched at the beginning. You will apply the binary search debugging till you find the one place that behaves badly.

### Divide and conquer strategy
The divide and conquer notion is not an algorithm. Is a more general recipe for creating algorithms. So it cannot give us an exact list of specific steps but it only explains that such a list should have several chapters.
The strategy is simple: if you have a big problem you should try to split it in simpler problems, solve them independently and then combine the results from each of them.
So a recipe for an *divide and conquer* type of algorithm is the following:

1. split the problem in sub-problems (divide phase)
2. solve each of them individually (the conquer phase)
3. combine the solutions of all sub-problem in a general solution (the conquer result collection)

## Debugging health issues

Now that we know how debugging works we can investigate the cold/flu/allergy that we have.
We have a search space that is not so big and we can carefully design some steps so we can differentiate between them.
If we apply the *divide and conquer* strategy we should split the entire allergy problem in two sub-problems: find if we have allergy and secondly find what causes the allergy. 

#### Step 1. Let's differentiate between allergy and the others.
For this is enough to take some anti-allergen pills. Yes you hear that well. Is that simple. You should take an *antihistamine* pill for 2 days and if the "cold"/"flu" disappears completely (they last at least one week so the organism will fight back after these 2 days if the enemy in this case an virus is still there) for sure you have an allergy. Of course in these 2 and for the next week you try not to eat/drink/do anything out of ordinary.

!!! Of course I'm not a doctor and you should do this on your own risk after you carefully read and consult adults and professionals.  

#### Step 2. If you have allergy discover the source
In order to discover the source you will use again the debugging/binary search technique(which now we know that is a divide and conquer algorithm): split all the allergens in half and for a while consume everything from only one half. If you never get problems then you should continue to eat those and only half of the remaining ones. And so on.

#### Step 3. Let's differentiate between cold and flu.
Still in investigations :D

Anyway I'm not sure if the distinction matters.

## Lessons
What do we learn from this?

- Algorithms are important.
- We use the binary search algorithm on a daily basis (and Leonardo DiCaprio is an unknown beneficiary as well)
- Without knowing the allergen source we still might solve the acute allergy with a simple test and no visit to a doctor (but on our own risk)
- Algorithmical thinking, problematization, scientific literacy helps.
- Be careful on traditional baloney about health and use [Baloney Detection Kit](http://www.youtube.com/watch?v=eUB4j0n2UDU)