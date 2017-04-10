---
slug: DevelopmentBigSteps
title: Development Big Steps
Date: 2017-04-10
published: true
category: dev
categories: ['dev', 'information', 'philosophy']
tags: []
---

Along my carrier I had several epiphanies/break-through insights that advanced my understanding on how information flows:

# 1. Garbage collector (via java)

# 2. Dependency injection (via springframework)
There is no global state, the objects declare all their dependencies.

# 3. Immutability & Immutable functional collections (via scala)

# 4. Function parameters

Is not clear from the begging why the functional approach works so good.
My first impression was because you get immutability so you get parallelism and removal of race conditions and that you don't consume memmory.

Actually what is important is **passing code that know how to get things instead passing things**.

In the end for both simplicity and performance you will need functions that can compute stuff combined with a caching/memoization mechanism

  * function
  * memoization and cache
  * dependency on other invalidated values - see scala.rx

## Sample

A good example is a paginated view of some items read from a csv file.

### Non-functional approach

In the non-functional approach you work with data. You read lines, you transform them several times, depending on the layer and in the last layer you trim them and subselect only a partial view of them. You can improve performance by adding a from/to indexes to all the functions till the moment when you read the lines. The code becomes complicated. Now all the layers are aware of the concept of partial view of the file. If you further refactor the code in the end you will see that the functional approach works best.

### Functional approach

You will start with a top down approach. You need some partial staff. So you will ask from some object to give you a partial list of things. The object doesn't have a thing but has a function on how to get one. The calls go deeper and deeper and only the minimal stuff must be computed. It's similar on how excel computes cells or like this library: https://github.com/lihaoyi/scala.rx


## Sample2

Playframework has a similar way on passing a request to a lot of functions that change the HttpRequest/HttpResponse object.
