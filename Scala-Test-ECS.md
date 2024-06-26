## Problem
Scalatest, the well known testing library for scala, is an instance of [[Emperor's Clothes Syndrome]]: is unintuitive, hard to use and lacks proper tools/IDE support(eclipse - I don't know about InteliJ IDEA).

[Multiple test styles](http://www.scalatest.org/user_guide/selecting_a_style) are available using this framework.
  - FunSuite
  - FlatSpec
  - FunSpec
  - WordSpec
  - FreeSpec
  - FeatureSpec
  - RefSpec

Except PropSpec they expose several problems that I wasn't warned by internet:
  - tests are not functions
  - tests cannot be overridden (annotated with @override) so you lose some static checks
  - you cannot refer a parent test (like super.test(""))
  - tests cannot be reused and executed independently from multiple test classes
  - is hard to guess the **human style** syntax of freely using matchers.
  - eclipse issues
    - cannot navigate to the line that failed the test
    - cannot independently run a test inherited by other test
    - two different compared strings are nicely reported only if the failure is a `org.junit.ComparisonFailure` thrown by `org.junit.Assert.assertEquals(String,String)`

## Solution
Use junit test runner. If we consider the standard scala collections tests as "Internet" then they have something to say: [use junit4](https://github.com/scala/scala/blob/2.12.x/test/junit/scala/collection/SeqLikeTest.scala)

```scala
package org.raisercostin.jedi

import org.junit.runner.RunWith
import org.junit.runners.JUnit4
import org.junit.Assert._
import org.junit.Test

import org.scalatest._
import org.scalatest.Matchers._
import org.scalatest.FunSuite
import org.scalatest.words.ContainWord

//@org.junit.runner.RunWith(classOf[org.scalatest.junit.JUnitRunner])
@RunWith(classOf[JUnit4])
class FileLocationTest extends FunSuite with SomeParentTest{
  //test("owner attributes") {
  //  assertNotNull(location.attributes.owner.getOwner())
  //}
  @Test
  override def testParentAncestor() {
    super.testParentAncestor()
  }
  @Test
  override def `second test with spaces`() {
    Assert.assertEquals("a","b")
  }
}
```