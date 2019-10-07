---
author: Michael Kaminsky
title: "The Data Science Lab Book"
cover: "/img/agile-analytics-p1.jpg"
publishDate: "2019-11-30"
tags: 
 - data science 
 - process
 - tools
---

For the last year or so I’ve been working on building a software application to help marketers allocate their marketing spend. This software is statistics and data-science powered and my partner and I have spent more hours than I’d like to admit struggling to squash bugs, achieve model convergence, and generally answer the question “why on earth could *_that_* be happening?”

In this post I’ll discuss the history of the lab book and how it’s used generally before discussing how to use it for data science and software engineering projects and providing an example lab book template.

## What is the lab book?

The lab notebook has been around, mostly unchanged, for hundreds of years. The lab notebook is, most simply, a record of what happens in the lab as a researcher is running experiments. It captures the researcher’s thoughts and ideas, their hypotheses, and their learnings.

If you recall the famous (and perhaps apocryphal) Thomas Edison quote “I have not failed. I've just found 10,000 ways that won't work” you surely must imagine that he kept track of those 10,000 attempts somewhere. The place for tracking those attempts, learning what won’t work, and (hopefully) coming up with ideas for what will, takes place in the lab book.

At the most general level, a lab book should have the following qualities:

* It should record the context of an experiment: the hypothesis being tested and the results observed
* It should be readable by others: other members of the team should be able to read the entries and be able to replicate the experiment and obtain the same results

Any conclusions that are drawn from a given experiment should reference supporting evidence in the lab book.

## The lab book for data scientists

So, given that all of our data are permanently stored in databases that we can access at any time, why do we need a lab book?

Often, the iteration that a data scientist goes through are opaque to their collaborators -- they may share a working (and reproducible) python notebook, but it’s often impossible to recover the different iterations the DS went through to get to that particular configuration, or what was learned along the way. While using Git can help, the way data scientists use git often does not capture the scientific process of hypothesis-experiment-analysis-conclusion. Instead, you end up with one commit that says “model works” and you don’t have a record of all of the different things the data scientist observed and learned along the way.

When it comes to understanding *_why_* a given model is structured the way it is, you need a history of what was already tried and what worked and what didn’t. If someone on the team wants to pick up where the first practitioner left off, they can avoid lots of wasted effort if they know what was attempted before.

## When to use the lab book?

Have you ever found yourself in a situation where you are working on a gnarly piece of code and you feel like you are just slamming your head into a brick wall over and over and over again? This happens to me pretty frequently and, if you’re around me while I’m going through this, you’ll hear me repeatedly say, aloud, “how on earth could *_that_* be happening?”. At about the third time I say that phrase aloud, I know I need to bust out the lab book.

Software complexity (especially in the data science space) can make it difficult or impossible to reason about what’s happening. For example:

* Working third-party opaque libraries
* Stochastic processes
* “Black-box” ML models
* Any piece of software sufficiently complex that you can’t hold all of the state in your head at a given time

At any point where you are working on a task and you are repeatedly encountering unexpected or surprising results that’s a good time to use the data science lab book to begin keeping track of your hypotheses, the evidence you have learned, and the assumptions you’re making.

In particular, it’s a good idea to use a lab book when:

* You’re doing experimental research (e.g., model-building and model-fitting)
* You’ve encountered anomalous patterns in results that haven’t gone away with 3 different attempts
* You’re isolating a bug in an opaque part of the code-base

By recording your experiences, you’ll not only force yourself to think more clearly and carefully about the problem at hand, but you’ll also be building a record that your colleagues can review when they either join you to help out or want to learn from your process.

## What does the lab book for data science look like?

A lab book should have one entry per experiment and should be ordered in reverse-chronological order (newest experiments at the top). A google-doc works great for this, especially if you’re collaborating with other team-members.

Here’s an example template:

**Date:** 2019-09-15  
**Hypothesis:** Our seasonality specification is sub-optimal because we don’t have sufficient data to estimate it. We can use google-trends data as an external data source for seasonality.  
**Conditions:** Included google trends data (scaled and centered) for keywords “cold” and “flu” in the regression component of the model.  
**Results:** Predictive accuracy improved by 2.5% but the model took ~30 minutes longer to converge. Unclear why.  
**Git commit:** b676ff0747e56fe3c2df30c3e93bb5f097289291

**Date:** 2019-09-14  
**Hypothesis:**  
**Conditions:** 
**Results:**   
**Git commit:**  

## What does the lab book get you?

While keeping track of experiments in a lab book like this definitely adds overhead to the development process, I believe that it’s worth it in circumstances of high uncertainty -- especially as you’re moving further from the “engineering” side of data science and towards the “research” side.

Maintaining a lab book has lots of benefits:

* It helps you clarify your thoughts -- what is this experiment doing and what’s the hypothesis?
* It helps you correctly review the conditions of different experiments to identify patterns
* It helps your collaborators understand and review the work you’ve already done

I hope you (and your team) find this useful. If it works for you, definitely drop me a note at [kaminsky.michael@gmail.com](mailto:kaminsky.michael@gmail.com).

