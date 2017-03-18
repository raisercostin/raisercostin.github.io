---
Date: 2013-11-11 20:09
Title: Engineering trade-offs
Tags: howto, engineering
Slug: tradeoffs
---


## Question
> Monday, November 4, 2013:
AZ - 10:10 PM

>Today at work I started a conversation with another developer. Maybe I am too affected by what I am reading
and I follow them religiously. The conversation was about returning or passing nulls and I was saying that is always bad and people should throw exceptions or follow the null object design pattern. The counterargument was that there are simple cases that returning null is valid and the solutions I am suggesting add complexity. Now I am confused.

## General Answer
In engineering is always about trade-offs. There is no room for religiousness.

### Solution
In that case is bad because the convention is not communicated well. They don't have your background and don't see so clearly why would you make such a statement "is always bad" when they don't even think about how this can be improved.

You could show them how the code looks in case you use an Optional (in guava for example) or your own Null Object. You could replace

	:::java
	void doSomething(@Nullable String value){
	   ....
	}

with 

	:::java
	void doSomething(@Nullable String value){
	     doSomething(Optional.fromNullable(value));
	}
	void doSomething(Optional<String> value){
	 ....
	}

It is hard to debate that the second version is worse than first, but prepares the ground to showcase the improvements.
