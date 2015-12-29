Less Volume, More Creativity
=============================
author: Teaching Statistics with R and RStudio 
date: JMM 2015 Minicourse
transition: fade

<!--
%\VignetteEngine{knitr::knitr}
%\VignetteIndexEntry{Less Volume, More Creativity -- Getting started with mosaic}
-->
<style type="text/css">
span.boxed {
  border:5px solid gray;
  border-radius:10px;
  padding: 5px;
}
span.invboxed {
  border:5px solid gray;
  padding: 5px;
  border-radius:10px;
  color: white;
}
table, td, th
{
border:0px;
}
</style>

Project MOSAIC and the `mosaic` package
===========================

NSF-funded project to develop a new way to introduce mathematics, statistics, computation 
and modeling to students in colleges and universities.

 * more information at [mosaic-web.org](http://mosaic-web.org)
 
 * the `mosaic` package is available via 
     * [CRAN](http://cran.r-project.org/web/packages/mosaic/index.html)
     * [github](https://github.com/rpruim/mosaic) 
         * updates more frequently than CRAN
         * beta branch for developing new features
     
  
A note about my slides
======================

The new support for document creation in RStudio
is great.

 * These slides are HTML, but I created them in RMarkdown (+ a little bit of HTML fiddling)

 * Slides can also be created as PDF created using beamer -- but again, you only need 
 to write RMarkdown
 
 * A single RMarkdown file can generate PDF, HTML, or Word
 
   * no need to know HTML, LateX or Word
   
   * but if you do, you can take advantage

Less Volume, More Creativity
================================








<table><tr align="top"><td width="20%" align="top">
<img src="../../images/MikeMcCarthy.jpg" align="top" width="200"></td>
<td align="top"> A lot of times <strong>you end up putting in a lot more volume</strong>,
because you are teaching fundamentals and you are teaching concepts that you need to put 
in, but you may not necessarily use because they are building blocks for other concepts 
and variations that will come off of that ... 
In the offseason you have a chance to take a step back and 
<strong>tailor it more specifically towards your team and towards your players</strong>." 
<br><br>
Mike McCarthy, Head Coach, Green Bay Packers 
</td>
</tr>
</table>

                                          
SIBKIS: See It Big, Keep It Simple
=======================

<table>
<tr>
<td>
Perfection is achieved, not when there is nothing more to add, but when there is nothing left to take away. 
<br><br>
--- Antoine de Saint-Exupery (writer, poet, pioneering aviator)
</td>
<td width="20%"> 
<img src="../../images/SaintExupery.jpg">
</tr>
</table>

Less Volume, More Creativity
=================

One key to successfully introducing R is finding a set of commands that is

 * **small**: fewer is better
 * **coherent**:  commands should be as similar as possible
 * **powerful**: can do what needs doing 
 
It is not enough to use R, it must be used elegantly.

Two examples of this principle:
 * the **mosaic** package
 * the **dplyr** package (Hadley Wickham)

Minimal R
=========

**Goal:** a minimal set of R commands for Intro Stats

**Result:** [Minimal R Vignette](https://github.com/rpruim/mosaic/raw/master/inst/doc/MinimalR-vignette.pdf#page=2)

Much of the work on the `mosaic` package has been motivated
by 

* The Less Volume, More Creativity approach
* The Minimal R goal

Note: We treat R as a language, but **not a programming language**: 
* R is a way to communicate to the computer

A few little details
====================

### R is case sensitive
 * many students are *not* case sensitive

### Arrows and Tab
 * up/down arrows scroll through history
 * TAB completion can simplify typing

### If all else fails, try ESC
 * If you see a + prompt, it means R is waiting for more input
 * If this is unintentional, you probably have a typo
 * ESC will get you pack to the command prompt

Make sure the mosaic and mosaicData packages are loaded
=======================================================

 * happens automatically on our RStudio server
 * use checkboxes in Packages tab to load/unload packages
 * packages can also be loaded from the command line
 

```r
require(mosaic)
require(mosaicData)
```

The Most Important Template
===============================
&nbsp;

<center>
<h2><strong><span class="invboxed">goal</span> ( <span class="invboxed">yyy</span> ~ <span class="invboxed">xxx</span> , data = <span class="invboxed">mydata</span> )</strong> 
</h2></center>

&nbsp;

The Most Important Template
===============================
&nbsp;

<center>
<h2><strong><span class="boxed">goal</span> ( <span class="boxed">&nbsp;y&nbsp;</span> ~ <span class="boxed">&nbsp;x&nbsp;</span> , data = <span class="boxed">mydata</span> )</strong> 
</h2></center>
 
The Most Important Template
=========================================
&nbsp;

<center>
<h2><strong><span class="boxed">goal</span> ( <span class="boxed">&nbsp;y&nbsp;</span> ~ <span class="boxed">&nbsp;x&nbsp;</span> , data = <span class="boxed">mydata</span> , ...)</strong> 
</h2></center>
&nbsp;

### Other versions:

```r
# simpler version
goal( ~ x, data = mydata )          
# fancier version
goal( y ~ x | z , data = mydata )   
# unified version
goal( formula , data = mydata )     
```

2 Questions
============
&nbsp;
<center>
<h2><strong><span class="boxed">goal</span> ( <span class="boxed">&nbsp;y&nbsp;</span> ~ <span class="boxed">&nbsp;x&nbsp;</span> , data = <span class="boxed">mydata</span> )</strong> 
</h2></center>
 
&nbsp;

###  What do you want R to do?  (goal)

&nbsp;
 
###  What must R know to do that?  


2 Questions
==============
&nbsp;
<center>
<h2><strong><span class="boxed">goal</span> ( <span class="boxed">&nbsp;y&nbsp;</span> ~ <span class="boxed">&nbsp;x&nbsp;</span> , data = <span class="boxed">mydata</span> )</strong> 
</h2></center>
 
&nbsp;


###  What do you want R to do?  (goal)
 * This determines the function to use 


###  What must R know to do that?  
 * This determines the inputs to the function
 * Must identify the variables and data frame

How do we make this plot?
=========================
<img src="LessVolume-figure/unnamed-chunk-5-1.png" title="plot of chunk unnamed-chunk-5" alt="plot of chunk unnamed-chunk-5" width="800" height="400" style="display: block; margin: auto;" />

How do we make this plot?
=========================
<img src="LessVolume-figure/unnamed-chunk-6-1.png" title="plot of chunk unnamed-chunk-6" alt="plot of chunk unnamed-chunk-6" width="60%" height="35%" style="display: block; margin: auto;" />

### What is the Goal?

 * 

### What does R need to know?

 * 
 * 

How do we make this plot?
=========================
<img src="LessVolume-figure/unnamed-chunk-7-1.png" title="plot of chunk unnamed-chunk-7" alt="plot of chunk unnamed-chunk-7" width="60%" height="35%" style="display: block; margin: auto;" />

### What is the Goal?

* a scatter plot 

### What does R need to know?

 * which variable goes where 
 * which data set 

How do we tell R to make this plot?
=========================
<img src="LessVolume-figure/unnamed-chunk-8-1.png" title="plot of chunk unnamed-chunk-8" alt="plot of chunk unnamed-chunk-8" width="60%" height="35%" style="display: block; margin: auto;" />
### What is the Goal?

* a scatter plot (`xyplot()`)

### What does R need to know?

 * which variable goes where (`births ~ date`)
 * which data set (`data = Births78`)
    * use `?Births78` for documentation

How do we make this plot?
=========================
&nbsp;
<center>
<h2><strong><span class="boxed">goal</span> ( <span class="boxed">&nbsp;y&nbsp;</span> ~ <span class="boxed">&nbsp;x&nbsp;</span> , data = <span class="boxed">mydata</span> )</strong> 
</h2></center>


```r
xyplot( births ~ date, data = Births78) 
```

<img src="LessVolume-figure/unnamed-chunk-9-1.png" title="plot of chunk unnamed-chunk-9" alt="plot of chunk unnamed-chunk-9" width="800" height="400" style="display: block; margin: auto;" />

Your turn: How do you make this plot?
=========

<img src="LessVolume-figure/unnamed-chunk-10-1.png" title="plot of chunk unnamed-chunk-10" alt="plot of chunk unnamed-chunk-10" width="800" height="300" />

### Two Questions?

Your turn: How do you make this plot?
=========

<img src="LessVolume-figure/unnamed-chunk-11-1.png" title="plot of chunk unnamed-chunk-11" alt="plot of chunk unnamed-chunk-11" width="800" height="300" />

1. Command: <code>bwplot()</code>

2. The data: <code>HELPrct</code>
 * Variables: <code>age</code>, <code>substance</code>
 * use `?HELPrct` for info about data



Your turn: How do you make this plot?
=========


```r
bwplot( age ~ substance, data = HELPrct)
```

<img src="LessVolume-figure/unnamed-chunk-12-1.png" title="plot of chunk unnamed-chunk-12" alt="plot of chunk unnamed-chunk-12" width="800" height="300" />

Your turn: How about this one?
=========

<img src="LessVolume-figure/unnamed-chunk-13-1.png" title="plot of chunk unnamed-chunk-13" alt="plot of chunk unnamed-chunk-13" width="800" height="300" />

1. Command: <code>bwplot()</code>

2. The data: <code>HELPrct</code>
 * Variables: <code>age</code>, <code>substance</code>
 * use `?HELPrct` for info about data

Your turn: How about this one?
=========


```r
bwplot( substance ~ age, data = HELPrct )
```

<img src="LessVolume-figure/unnamed-chunk-14-1.png" title="plot of chunk unnamed-chunk-14" alt="plot of chunk unnamed-chunk-14" width="800" height="300" />


Graphical Summaries: One Variable
========================================================

```r
histogram( ~ age, data = HELPrct) 
```

<img src="LessVolume-figure/unnamed-chunk-15-1.png" title="plot of chunk unnamed-chunk-15" alt="plot of chunk unnamed-chunk-15" width="800" height="400" style="display: block; margin: auto;" />

Note: When there is **one variable** it is on 
the **right side** of the formula.

Graphical Summaries: Overview
========================================================

### One Variable

```r
  histogram( ~age, data = HELPrct ) 
densityplot( ~age, data = HELPrct ) 
     bwplot( ~age, data = HELPrct ) 
     qqmath( ~age, data = HELPrct ) 
freqpolygon( ~age, data = HELPrct ) 
   bargraph( ~sex, data = HELPrct )
```

### Two Variables


```r
xyplot(  i1 ~ age,       data = HELPrct ) 
bwplot( age ~ substance, data = HELPrct ) 
bwplot( substance ~ age, data = HELPrct ) 
```

 *  **i1** average number of drinks (standard units) consumed per day in the past 30 days (measured at baseline)


The Graphics Template
========================================================

### One variable
<center>
<h3><strong><span class="boxed">plotname</span> ( 
~ <span class="boxed">&nbsp;x&nbsp;</span> , data = <span class="boxed">mydata</span> , ...)</strong> 
</h3></center>

 * `histogram()`,  `qqmath()`,  `densityplot()`, `freqpolygon()`, `bargraph()` 

&nbsp;


### Two Variables
<center>
<h3><strong><span class="boxed">plotname</span> ( <span class="boxed">&nbsp;y&nbsp;</span> ~ <span class="boxed">&nbsp;x&nbsp;</span> , data = <span class="boxed">mydata</span> , ...)</strong> 
</h3></center>


 * `xyplot()`, `bwplot()`



Your turn
==============================================
Create a plot of your own choosing with one of these data sets

```r
names(KidsFeet)    # 4th graders' feet
?KidsFeet
```

```r
names(Utilities)   # utility bill data
?Utilities
```

```r
names(NHANES)      # body shape, etc.
?NHANES
```


groups and panels
========================================================

 * Add `groups = `<span class="invboxed">group</span> to overlay.
 * Use `y ~ x | z` to create multipanel plots.


```r
densityplot( ~ age | sex, data = HELPrct,  
               groups = substance,  
               auto.key = TRUE)   
```

<img src="LessVolume-figure/unnamed-chunk-21-1.png" title="plot of chunk unnamed-chunk-21" alt="plot of chunk unnamed-chunk-21" width="800" height="400" style="display: block; margin: auto;" />


Bells & Whistles
================

 * titles
 * axis labels
 * colors
 * sizes
 * transparency
 * etc, etc.
 
My approach: 
 * Let the students ask or 
 * Let the data analysis drive 

Bells and Whistles
========================================================


```r
xyplot( births ~ date, data = Births78,  
  groups = wday,
  type = 'l',
  auto.key = list(columns = 4, 
    lines = TRUE, points = FALSE),
  par.settings = list(
    superpose.line = list( lty = 1 ) ))
```

<img src="LessVolume-figure/unnamed-chunk-22-1.png" title="plot of chunk unnamed-chunk-22" alt="plot of chunk unnamed-chunk-22" width="800" height="300" style="display: block; margin: auto;" />


====
```
     July 1978
Su Mo Tu We Th Fr Sa
                   1
 2  3  4  5  6  7  8
 9 10 11 12 13 14 15
16 17 18 19 20 21 22
23 24 25 26 27 28 29
30 31
```

Numerical Summaries: One Variable
========================================================

Big idea: Replace plot name with summary name

 * Nothing else changes
 

```r
histogram( ~ age, data = HELPrct )
     mean( ~ age, data = HELPrct )
```

```
[1] 35.65342
```

<img src="LessVolume-figure/unnamed-chunk-24-1.png" title="plot of chunk unnamed-chunk-24" alt="plot of chunk unnamed-chunk-24" width="800" height="300" />

Other Summaries
===
The mosaic package includes formula aware versions of
`mean()`,
`sd()`,
`var()`,
`min()`,
`max()`,
`sum()`,
`IQR()`, ...

Also provides `favstats()` to compute our favorites.

```r
favstats( ~ age, data = HELPrct )
```

```
 min Q1 median Q3 max     mean       sd   n missing
  19 30     35 40  60 35.65342 7.710266 453       0
```

Tallying 
=======


```r
tally( ~ sex, data = HELPrct)
```

```

female   male 
   107    346 
```

```r
tally( ~ substance, data = HELPrct)
```

```

alcohol cocaine  heroin 
    177     152     124 
```

Numerical Summaries: Two Variables
===========================================
Three ways to think about this.  All do the same thing.

```r
sd(   age ~ substance, data = HELPrct )
sd( ~ age | substance, data = HELPrct )
sd( ~ age, groups = substance, data = HELPrct )
```

```
 alcohol  cocaine   heroin 
7.652272 6.692881 7.986068 
```

Numerical Summaries: Tables
=============================================

```r
tally( sex ~ substance, data = HELPrct )
```

```
        substance
sex      alcohol cocaine heroin
  female      36      41     30
  male       141     111     94
```

```r
tally( ~ sex + substance, data = HELPrct )
```

```
        substance
sex      alcohol cocaine heroin
  female      36      41     30
  male       141     111     94
```

Numerical Summaries
====================================


```r
mean( age ~ substance | sex, data = HELPrct )
```

```
     A.F      C.F      H.F      A.M      C.M      H.M        F        M 
39.16667 34.85366 34.66667 37.95035 34.36036 33.05319 36.25234 35.46821 
```

```r
mean( age ~ substance | sex, data = HELPrct, 
      .format = "table" )
```

```
  substance sex     mean
1         A   F 39.16667
2         A   M 37.95035
3         C   F 34.85366
4         C   M 34.36036
5         H   F 34.66667
6         H   M 33.05319
```

 * I've abbreviated the names to make things fit on slide
 * Also works for `median()`, `min()`, `max()`, `sd()`, `var()`, `favstats()`, etc.

One Template to Rule a Lot
==========================

 * single and multiple variable graphical summaries
 * single and multiple variabble numerical summaries
 * linear models

```r
  mean( age ~ sex, data = HELPrct )
bwplot( age ~ sex, data = HELPrct ) 
    lm( age ~ sex, data = HELPrct )
```


```
  female     male 
36.25234 35.46821 
```

```
(Intercept)     sexmale 
 36.2523364  -0.7841284 
```

Some other things
=================
The `mosaic` package includes some other things, too
 * Data sets (you've already seen some of them)
 * xtras: `xchisq.test()`, `xpnorm()`, `xqqmath()`
 * `mplot()` 
   * `mplot(HELPrct)` interactive plot creation
   * replacements for `plot()` in some situations
 * simplified `histogram()` controls (e.g., `width`)
 * simplified ways to add onto lattice plots

xpnorm()
========

```r
xpnorm( 700, mean = 500, sd = 100)
```

```

If X ~ N(500,100), then 

	P(X <= 700) = P(Z <= 2) = 0.9772
	P(X >  700) = P(Z >  2) = 0.0228
```

<img src="LessVolume-figure/unnamed-chunk-35-1.png" title="plot of chunk unnamed-chunk-35" alt="plot of chunk unnamed-chunk-35" width="800" height="300" />

```
[1] 0.9772499
```

xpnorm()
========

```r
xpnorm( c(300, 700), mean = 500, sd = 100)
```

```

If X ~ N(500,100), then 

	P(X <= 300) = P(Z <= -2) = 0.0228
 	P(X <= 700) = P(Z <= 2) = 0.9772
	P(X >  300) = P(Z >  -2) = 0.9772
 	P(X >  700) = P(Z >  2) = 0.0228
```

<img src="LessVolume-figure/unnamed-chunk-36-1.png" title="plot of chunk unnamed-chunk-36" alt="plot of chunk unnamed-chunk-36" width="800" height="300" />

```
[1] 0.02275013 0.97724987
```

xchisq.test()
=============




```r
xchisq.test(phs)
```

```

	Pearson's Chi-squared test with Yates' continuity correction

data:  x
X-squared = 24.429, df = 1, p-value = 7.71e-07

   104.00   10933.00 
(  146.52) (10890.48)
[12.05]  [ 0.16] 
<-3.51>  < 0.41> 
   
   189.00   10845.00 
(  146.48) (10887.52)
[12.05]  [ 0.16] 
< 3.51>  <-0.41> 
   
key:
	observed
	(expected)
	[contribution to X-squared]
	<residual>
```

Modeling 
==============================
Modeling is really the starting point for the `mosaic` 
design.

 * linear models (`lm()` and `glm()`) defined the template
 * lattice graphics use the template (so we chose lattice)
 * we added functionality so numerical summaries 
 can be done with the same template
 * additional things added to make modeling easier for beginners.

Models as Functions
===================

```r
model <- lm(width ~ length * sex, 
            data = KidsFeet)
Width <- makeFun(model)
Width( length = 25, sex = "B")
```

```
       1 
9.167675 
```

```r
Width( length = 25, sex = "G")
```

```
       1 
8.939312 
```

Models as Functions -- Plotting
===================

                                                       

```r
xyplot( width ~ length, data = KidsFeet, 
        groups = sex, auto.key = TRUE )
plotFun( Width(length, sex = "B") ~ length, 
         col = 1, add = TRUE)
plotFun( Width(length, sex = "G") ~ length, 
         col = 2, add = TRUE)
```

<img src="LessVolume-figure/unnamed-chunk-41-1.png" title="plot of chunk unnamed-chunk-41" alt="plot of chunk unnamed-chunk-41" width="800" height="300" />



Resampling -- You can do() it!
==============================

## Lady Tasting Tea

 * Often used on first day of class
 
 * Story
 
   * woman claims she can tell whether milk
   has been poured into tea or vice versa.
   
   * Question: How do we test this claim?
   




Computer Simulation
===================
Use `rflip()` to simulate flipping coins

```r
rflip()
```

```

Flipping 1 coin [ Prob(Heads) = 0.5 ] ...

H

Number of Heads: 1 [Proportion Heads: 1]
```

Computer Simulation
===================
Faster if we flip multiple coins at once:

```r
rflip(10)
```

```

Flipping 10 coins [ Prob(Heads) = 0.5 ] ...

H H H T T T H H H T

Number of Heads: 6 [Proportion Heads: 0.6]
```
 * easier to consider `heads` = correct; `tails` = incorrect than to compare with a given pattern
   * this switch bothers me more than it bothers my students

Let's do that a lot of times
============================
`rflip(10)` simulates 1 lady tasting 10 cups 1 time.

We can do that many times to see how guessing ladies do:

```r
do(2) * rflip(10)
```

```
   n heads tails prop
1 10     6     4  0.6
2 10     5     5  0.5
```

 * `do()` is clever about what it remembers
 * 2 isn't many -- we'll do many next.

The distribution of guessing ladies
===================================


```r
Ladies <- do(5000) * rflip(10)
head(Ladies, 1)
```

```
   n heads tails prop
1 10     4     6  0.4
```

```r
histogram( ~ heads, data = Ladies, width = 1 )
```

<img src="LessVolume-figure/unnamed-chunk-48-1.png" title="plot of chunk unnamed-chunk-48" alt="plot of chunk unnamed-chunk-48" width="800" height="300" />

How often does guessing score 9 or 10?
=============================================


```r
tally( ~(heads >= 9) , data = Ladies)
```

```

 TRUE FALSE 
   52  4948 
```

How often does guessing score 9 or 10?
=============================================


```r
tally( ~(heads >= 9) , data = Ladies, 
                       format = "prop")
```

```

  TRUE  FALSE 
0.0104 0.9896 
```

How often does guessing score 9 or 10?
=============================================


```r
tally( ~(heads >= 9) , data = Ladies, 
                       format = "prop")
```

```

  TRUE  FALSE 
0.0104 0.9896 
```

```r
 prop( ~(heads >= 9), data = Ladies)
```

```
  TRUE 
0.0104 
```

A general approach to randomization
===================================

 1. Do it for your data
 2. Do it for "random" data
 3. Do it lots of times for "random" data
 
 * definition of "random" is important, but can
 often be handled by `shuffle()` or `resample()`

Example: Do mean ages differ by sex?
====================================

```r
diffmean(age ~ sex, data = HELPrct)
```

```
  diffmean 
-0.7841284 
```

```r
do(1) * 
  diffmean(age ~ shuffle(sex), data = HELPrct)
```

```
   diffmean
1 0.1090973
```

```r
Null <- do(5000) * 
  diffmean(age ~ shuffle(sex), data = HELPrct)
```

Example: Do mean ages differ by sex?
====================================


```r
prop( ~(abs(diffmean) > 0.7841), data = Null )
```

```
  TRUE 
0.3616 
```

```r
histogram(~ diffmean, data = Null, v = -.7841) 
```

<img src="LessVolume-figure/unnamed-chunk-53-1.png" title="plot of chunk unnamed-chunk-53" alt="plot of chunk unnamed-chunk-53" width="800" height="300" />

Example:  Bootstrap for difference in means
========================================


```r
Bootstrap <- do(5000) * 
  diffmean(age~sex, data= resample(HELPrct))

histogram( ~diffmean, data = Bootstrap, 
                      v = -.7841, glwd = 4 )
```

<img src="LessVolume-figure/unnamed-chunk-54-1.png" title="plot of chunk unnamed-chunk-54" alt="plot of chunk unnamed-chunk-54" width="800" height="300" />

Example:  CI for difference in mean ages
========================================

```r
cdata(~diffmean, data = Bootstrap, p = .95)
```

```
       low         hi  central.p 
-2.4787104  0.8894968  0.9500000 
```

```r
confint(Bootstrap, method = "quantile")
```

```
      name    lower     upper level     method   estimate
1 diffmean -2.47871 0.8894968  0.95 percentile -0.7841284
```

Example:  CI for difference in mean ages
========================================

```r
confint(Bootstrap)  # default uses st. err
```

```
      name     lower     upper level method   estimate margin.of.error  df
1 diffmean -2.433334 0.8937444  0.95 stderr -0.7841284        1.663539 452
```

Randomization and linear models
=================================


```r
do(1) * lm(width ~ length, data = KidsFeet)
```

```
  Intercept    length     sigma r.squared        F numdf dendf
1  2.862276 0.2479478 0.3963356 0.4110041 25.81878     1    37
```

```r
do(3) * lm( width ~ shuffle(length), data = KidsFeet)
```

```
  Intercept     length.     sigma   r.squared         F numdf dendf
1 11.639314 -0.10706623 0.4962420 0.076635651 3.0708562     1    37
2 11.541875 -0.10312500 0.4977279 0.071097404 2.8319481     1    37
3  9.754237 -0.03081856 0.5147824 0.006349662 0.2364388     1    37
```

Randomization and linear models
=================================


```r
do(1) * 
  lm(width ~ length + sex, data = KidsFeet)
```

```
  Intercept   length       sexG     sigma r.squared        F numdf dendf
1  3.641168 0.221025 -0.2325175 0.3848905 0.4595428 15.30513     2    36
```

```r
do(3) * 
  lm( width ~ length + shuffle(sex), 
                       data = KidsFeet)
```

```
  Intercept    length       sex.G     sigma r.squared        F numdf dendf
1  2.942851 0.2431545  0.07785347 0.3998086 0.4168355 12.86608     2    36
2  3.450856 0.2282462 -0.20833605 0.3878261 0.4512672 14.80285     2    36
3  2.842685 0.2484316  0.01565872 0.4017205 0.4112447 12.57297     2    36
```


Randomization and linear models
=================================





```
Error in eval(expr, envir, enclos) : object 'sexG' not found
```
