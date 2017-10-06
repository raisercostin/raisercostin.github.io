Writing code in `css` for UI is like using `assembler` to code business software. You are forced to think in an environment with many low level concepts: pixels, borders, flow, etc. These concepts are good for renderers but not for human interpretation.

We should have a suite of concepts/languages that go to higher and higher abstraction level. At the topmost level of abstraction you should be able to think and tell things like this: this page should have 4 sections displayed as usual with differentiated rows.

# Form Levels:

1. Browser renderer quircks - At this level not even plain css will work. You need to create clever tricks depending on browsers that have incomplete and partial implementation of CSS1, CSS2, CSS3 features.
2. Standard CSS3 - See CSS specs. At this level you can have a single mental model on how a browser should compute what is to be rendered. This level is a utopia to which we gradually converge.
3. Bootstrap Implementation - You map the Human Low Level Form concepts to the Standard CSS3 stuff.
4. Human Low Level Form concepts - See Bootstrap like libraries. This is the first level of abstraction that is human oriented. A person will want to decide for once the font, spacing, layout, color and components properties for a website.
5. Human High Level Form concepts - Here you associate the Form Stuff with Content Stuff. You decide that a content entity will be rendered with a specific component.

# Content Levels

1. Human high level concepts - This level is concerned with content rather than form. The content is a different dimension than the previous ones. 
Usually a hierarchy, according to the top down approach. You define high level things and go into details slowly. The parent decides how the children are influenced via context.

# Others - to sort out
- semantic html - https://internetingishard.com/html-and-css/semantic-html/