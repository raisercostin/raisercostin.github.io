---
Date: 2013-12-08
Title: Image Size
Tags: image,pic,size,wallpaper,drawable,android,photoshop,photo
Slug: image-size
---

## Problem
### Question
If you are to create digital content what should be the resolution that should be used in photoshop for example?
### Answer
*2560x1600*

## Details
### Concepts
- Density-independent pixel (dp) - The conversion of dp units to screen pixels is simple: px = dp * (dpi / 160). For example, on a 240 dpi screen, 1 dp equals 1.5 physical pixels.
- Others to investigate
    - resolution (width, height)
	- diagonal
	- dpi
	- colours
	- transparency
	- reflection (mirror - maximum, black - minimum?, metallic colours: gold, silver ....)

### Ratio

| Width                       | Height | R=W/H | desc
| 17 | 9 | 1.888 | -
| 16 | 9 | 1.775 | = |
| 5  | 3 | 1.666 | = 15/9 |
| 8  | 5 | 1.6 | =  16/10 |
| 3  | 2 | 1.5 | = 15/10 |
| 4  | 3 | 1.3 | = 12/9 |
| 5  | 4 | 1.25| = 10/8|

 
### Image sizes

| Device                      | Width | Height | R=W/H | Screen | Density (PPI)| DPI (dots per inch)
| generic 4:3                 |    4 |    3 | 1.3 | - | - 
| generic 16:9                |   16 |    9 | 1.775 | - | -
| Amazon Kindle Fire HDX 8.9" | 2560 | 1600 | 1.6 | 8.9 | 339
| Google/Samsung Nexus 10     | 2560 | 1600 | 1.6 | 10.1 | 299
| Apple iPad Mini 2013        | 2048 | 1536 | 1.3 | - | 326
| Apple iPad Air              | 2048 | 1536 | 1.3 | - | 326
| iphone 5                    | 1136 |  640 | 1.775 | 4 | -

- [display resolutions](https://en.wikipedia.org/wiki/Display_resolution)
![resolutions from wikipedia](https://upload.wikimedia.org/wikipedia/commons/thumb/f/f0/Vector_Video_Standards4.svg/749px-Vector_Video_Standards4.svg.png)
- [various sizes](http://www.tabletpccomparison.net)
- [Linus Torvalds - make 2560x1600 the new standard](http://www.reddit.com/r/technology/comments/12e4x2/linus_torvalds_make_2560x1600_the_new_standard)
- [android screen resolutions](http://developer.android.com/guide/practices/screens_support.html)