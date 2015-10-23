---
title       : Simple Linear Regression
subtitle    : Drawing straight lines through data
author      : Andrew Jackson
job         : Associate Professor
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [mathjax, bootstrap, quiz]            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

--- &two-cols w1:48% w2:48%

## Scatter plot data

*** {name: left}

> - How are two measures related?
> - Are they correlated?
> - Can one explain variation in the other?
> - What is the relationship?
> - Can I make new predictions using the relationship?

*** {name: right}

![plot of chunk unnamed-chunk-1](assets/fig/unnamed-chunk-1-1.png) 

--- &two-cols w1:48% w2:48%

## Are they correlated?

*** {name: left}

> - Both x and y data show variation
> - Question is: do they co-vary (vary together)?
   - Are large $x$ values associated with large $y$ values?
   - or are large $x$ values associated with small $y$ values?
> - Calculate a statistics falle the correlation coefficient ($r$) which 
takes values $-1 \leq r \leq +1$
> - test $r$ against a statistical distribution to get a p-value using 
`cor.test()`

*** {name: right}

![plot of chunk unnamed-chunk-2](assets/fig/unnamed-chunk-2-1.png) 


--- 

## Let's ask a different question

> - Instead of...
> - Is there a relationship between $x$ and $y$
> - I want to know...
> - What _is_ the relationship between $x$ and $y$
> - Need to fit a line through the data and we can use this to describe what the 
relationship is, both verbally and mathematically

--- 

## A straight line
![plot of chunk unnamed-chunk-3](assets/fig/unnamed-chunk-3-1.png) 

---

## A null hypothesis
![plot of chunk unnamed-chunk-4](assets/fig/unnamed-chunk-4-1.png) 

--- &two-cols w1:58% w2:38%

## Residuals

*** {name: left}

![plot of chunk unnamed-chunk-5](assets/fig/unnamed-chunk-5-1.png) 

*** {name: right}

> - Computer fits the line by minimising the residuals off the line
>- Strictly (for least squares fitting), it minimises the sum of the squares
of the residuals
> - $\sum (y_i - \hat{y_i}) ^ 2$



---

## Residuals are informative
> - tells us which data are larger than predicted, and which are lower
> - Should ideally be normally distributed around the line
> - Test this with visual plots like histograms or q-q plots
> - Should be evenly spread around the line with no obvious trend

--- &two-cols w1:48% w2:48%

## Back to our line


*** {name: left}

> -  This figure shows how much algal growth occurs in one week in freshwater 
lakes of varying pollution levels
> -  It would be useful for us to know how much pollution affects algal growth
> -  It would also be useful if we could make predictions for growth rates in 
lakes we havent been able to observe such as:
> -  pristine unpolluted lakes
> -  or lake with exactly 2.2 mg/L pollution.

*** {name: right}

![plot of chunk unnamed-chunk-6](assets/fig/unnamed-chunk-6-1.png) 


