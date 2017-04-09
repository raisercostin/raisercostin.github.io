---
slug: ScalaEnrichedPattern
title: Scala Enriched Pattern
Date: 2017-04-09
published: true
category: dev
categories: ['dev', 'scala']
tags: ['dev', 'scala', 'patterns', 'enrich', "pimp", "implicit"]
---

# Problem
If you have an object A that you want to convert to B.

# Solution

## Solution 1 - Define implicits
	
	//Given:
	case class A(value:String)
	case class B(value:String)
	def toB1(a:A):B = "B1-"+a.value
	def toB2(a:A):B = "B2-"+a.value

	//Reusable class
	class Enriched[A](op: => A) {
		/** An object to an input object */
		def asRich: A = op
	}

	//Enrich them
	object RichMapper {
	  implicit def toB1(all: A) = new Enriched(toB1)
	  implicit def toB2(all: A) = new Enriched(toB2)
	}
	
	//Use them
	val a = A("a-value")
	{
		import RichMapper.toB1
		val b = a.asRich
		println(b) // B1-a-value
	}
	{
		import RichMapper.toB2
		val b = a.asRich
		println(b) // B2-a-value
	}
	{
		import RichMapper.toB1
		val b = a.asRich //compilation error.
		println(b) // B1-a-value
	}

## Existing solutions

Use scala.collection.JavaConverters to interoperate with Java collections. These are a set of implicits that add asJava and asScala conversion methods. The use of these ensures that such conversions are explicit, aiding the reader:

	import scala.collection.JavaConverters._

	val list: java.util.List[Int] = Seq(1,2,3,4).asJava
	val buffer: scala.collection.mutable.Buffer[Int] = list.asScala


### References

- http://stackoverflow.com/questions/14802517/is-there-a-way-to-enrich-a-scala-class-without-wrapping-the-code-into-another

# Bad Solutions

TBD