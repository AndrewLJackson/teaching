---
title       : Log-Log Regression
subtitle    : Allometric, and other scaling
author      : Andrew Jackson
job         : Associate Professor
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : mathjax            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

--- &vcenter

## Still just linear regression
But now with log transformed data on the x and y axes




![plot of chunk unnamed-chunk-2](assets/fig/unnamed-chunk-2-1.png) 


--- .class #id 

## Focus on length-mass relationships

- How does the mass of an organism scale with its length?
- Scaling is related to interesting biological and ecological processes
   - Metabolic costs
   - Transport of molecules over membranes
   - Predation or fishing / harvesting
   - Diet
   - Ecological scaling laws (abundance and biomass)

--- .class #id 

## Scaling of simple shapes

- How does a cube scale with its length?
- $Mass = Density * Volume$
- Assume density stays the same no matter what size, so $Mass \propto Volume$
- $Volume = L_1 * L_2 * L_3$
- $Volume = a * L ^ b$
- So if the cube stays the same shape (i.e. it remains a cube)
   - How does mass change if length is doubled?
   - $Volume = 2L_1 * 2L_2 * 2L_3 = 2 * L ^ 3$
- Isometric scaling is when the object stays the same shape as it grows or shrinks

--- &two-cols w1:58% w2:38%
## Spherical cows

*** {name: left}
- How does mass of a sphere change with length?
- $Volume = \frac{4}{3} * \pi 8 r ^ 3$
- $Volume = (4/(3*9) * \pi * L^3$
- Again, $Volume$, and hence $Mass$ changes with $Length^3$
- So, generally we have...
- $Volume = (some number) * L^3$
- $Volume = a * L ^ b$
- Where for isometric scaling of $Volume$ (or $Mass$) with $Length$, $b = 3$

*** {name: right}
<img src="assets/img/SphericalCow2.gif" href="https://commons.wikimedia.org/wiki/File:SphericalCow2.gif#/media/File:SphericalCow2.gif">

--- .class #id 

## A general equation for scaling of Mass to Length
- $Mass = a * Length ^ b$
- Take the Log of both sides (doesnt matter what logarithmic base)
   - $\log(M) = \log(a * L ^ 3)$
   - $\log(M) = \log(a) + \log(L^b)$
   - $\log(M) = \log(a) + b * \log(L)$
   - $Y = b_0 + b_1 * X$
   - where... $\log(a) = b_0$
   - so... $a = e^{b_0}$
   - and... $b_1 = b$ and is simply the power in the allometric equation
   
--- .class #id 

##  INSERT EXAMPLE MASS VS LENGTH RELATIONSHIP FROM FISHBASE

--- &two-cols w1:18% w2:78%

## Two Column Layout   

This slide **should** have two columns of variable width 

*** {name: left}

- point 1
- point 2
- point 3

*** {name: right}

- point 4
- point 5
- point 6


