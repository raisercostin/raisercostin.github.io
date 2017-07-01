[Multiple test styles](http://www.scalatest.org/user_guide/selecting_a_style) are available using this framework.
  - FunSuite
  - FlatSpec
  - FunSpec
  - WordSpec
  - FreeSpec
  - FeatureSpec
  - RefSpec

Except PropSpec they expose several problems seemingly unnoticed till now:
  - tests are not functions
  - tests cannot be overridden (annotated with @override) so you lose some
  - you cannot refer a parent test (like super.test(""))
  - tests cannot be reused and executed independently from multiple test classes
  - is hard to guess the **human style** syntax of freely using matchers.