---
author: Michael Kaminsky
title: "Agile Analytics, Part 2: The Bad Stuff"
cover: "/img/agile-analytics-p2.jpg"
publishDate: "2018-06-17"
draft: true
tags: 
 - agile
 - scrum
 - process
---

Agile software engineering practices have become the standard work management tool for modern software development teams. Are these techniques applicable to analytics, or is the nature of research prohibitively distinct from the nature of engineering?


I've already talked through what I [_like_]({{< relref "agile-analytics-p1.md" >}}) about the scrum development process for analytics. In this post, I'll talk through some of the problems and drawbacks.
<!--more-->

You can find [part 1 here]({{< relref "agile-analytics-p1.md" >}}).

# Things that don't work so well:
* The fortuitous finding
* Exploratory data analysis
* Product ownership / story-writing
* Business-as-usual support

I often say that analytics is a discipline that's half software engineering and half research. The parts of scrum that don't work so well for analytics are the parts that are more aligned with the "research" half of the analytics discipline.

## The fortuitous finding

Often, some of the highest value insights that an analytics team generate come from someone seeing something interesting -- but totally unrelated to their current assignment -- and then pursuing it.  This type of curiosity and tenacity is something we *love* to see in analysts we hire, but the scrum process, when it becomes a well-oiled box-checking process, can squash these types of endeavors.

When you hear something like "Ooh shoot. I noticed that issue before but I was so focused on finishing my story before the sprint ended that I didn't look closer" then you may be suffering from this. This "illusion of effectiveness", where the team feels like they're getting all their stories done (collecting those sweet, sweet story points) is pernicious because it *feels* productive despite missing out on potential high-value opportunities. The analytics team is *supposed* to be generating novel insights, which means that there has to be some tolerance for unplanned investigations.

As a researcher, I've often found that the most valuable insights I've generated have come from investigating something that looked odd or interesting and was only tangentially related to the task at hand. These sorts of exploratory analysis make up the "science" part of data science and we want to ensure that our analysts have the time and the inclination to pursue these opportunities and generate novel insights.

## Exploratory data analysis

Exploratory data analysis is an important part of the "basic research" function of an analytics or data science team. Unfortunately, it's really hard to write "user stories" or "acceptance criteria" for this sort of work because ... the whole point is that you aren't sure what you're going to find, and it requires a researcher's intuition to know when the story is "done" (because there's always more things you *could* look into, but often those marginal investigations aren't valuable).

The nature of exploratory data analysis means that the objectives of the analysis may change *as you do the work*. You sometimes realize "oh x isn't actually very interesting -- the real issue is understanding y." If your scrum process is too inflexible, you can end up expending effort against tasks that aren't valuable simply because they're required to get the story done.  While (software) engineering is a discipline of creatively applying mathematical tools to a well-defined problem, data science is about creatively applying mathematical tools to *poorly defined* problems, and it's this fundumental difference in nature that makes partitioning the work into small well-scoped tasks sometimes impossible for data science.

## Product ownership / story-writing

When you're trying to build a model of customer churn, there's some amount of judgement and art that goes into doing good data science. The acceptance criteria of "predict which customers are going to churn" is too vague to be helpful and doesn't capture the art of investigating a problem by poking at it from multiple sides.  Additionally, it can be very difficult for someone external to write stories or be the product owner for the team. Often, the data scientists or analysts are *the* domain experts in the company and there isn't anyone else who is better informed about what the next step in a research program should be. 

In user-facing product organizations, stories are often phrased like "as a customer trying to x, I should be able to y." This sort of framing often doesn't work well for research tasks since there isn't a customer your building a product for. Finally, bringing in an external product manager can disrupt the "flow" of research and prioritize software "features" over generating valuable intelligence.

## Business-as-usual support

In many analytics teams, there's a fair amount of business-as-usual reporting and analysis support. For example, the analytics team may be in charge of assembling the quarterly board deck, preparing reports for the monthly business reviews, or analyzing the results of ongoing A/B tests. Additionally, analytics teams need to be "on call" to support their business partners as questions come up ("how do I build this report?", "why doesn't this number match this other number?"). This sort of work falls outside of sprint planning, and if you don't account for it somehow, you'll end up consistently missing your sprint commitments.  

Accounting for this work (and explaining it to stakeholders) can be tough, especially when it's highly variable and unplanned. You don't want to end up in a situation where you've over-committed the team and you end up dropping the ball on business-critical insight activities (e.g., "we have a big media opportunity, but we have to make a decision by Tuesday: can you help us figure out if we're already saturated in these markets?").

# Conclusion

Scrum is a great process for running an analytics team, but there are some definite challenges that are specific to doing analytics work. In my next post I'll discuss some adjustments to the scrum methodolgoy you can use to help address these issues.
