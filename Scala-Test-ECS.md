## Problem
Scalatest, the well known testing library for scala, is a instance of [[Emperor's Clothes Syndrome]]: is unintuitive and hard to use.

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

## Solution
Use junit test runner.

```scala
package org.raisercostin.jedi
import org.junit.Assert._
import org.junit.Test

import org.scalatest._
import org.scalatest.Matchers._
import org.scalatest.FunSuite
import org.scalatest.words.ContainWord

//@org.junit.runner.RunWith(classOf[org.scalatest.junit.JUnitRunner])
class FileLocationTest extends FunSuite {
  //test("owner attributes") {
  //  assertNotNull(location.attributes.owner.getOwner())
  //}
  @Test
  override def testParentAncestor() {
    super.testParentAncestor()
  }
}
```