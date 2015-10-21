---
title       : Main test page
subtitle    : messing about
author      : Andrew Jackson
job         : Associate Professor
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---


## Read-And-Delete

1. Edit YAML front matter
2. Write using R Markdown
3. Use an empty line followed by three dashes to separate slides!

--- .class #id 

## Slide 2

--- .class1 #id1 bg:yellow
who knows?

--- &two-cols-fixed

## Two Column Layout   

This slide **should** have two columns of fixed width 

*** {name: left}

- point 1
- point 2
- point 3

*** {name: right}

- point 4
- point 5
- point 6

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

--- &caption
test caption only

