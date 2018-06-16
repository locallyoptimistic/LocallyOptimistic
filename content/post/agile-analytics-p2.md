---
author: Michael Kaminsky
title: "Agile Analytics, Part 2: The Bad Stuff"
cover: "/img/agile-analytics-p2.jpg"
publishDate: "2018-06-17"
tags: 
 - agile
 - scrum
 - process
---


This is part 2 of my 3 part exploration of the following question: are Agile engineering practices applicable to analytics, or is the nature of research prohibitively distinct from the nature of engineering? For the agile fans, in [_part 1_]({{< relref "agile-analytics-p1.md" >}}) I gave an intro to agile and talked through what I like about the scrum development process for analytics. For the agile nay-sayers, in this post I explore the elements of agile that do not work particularly well with Analytics (issues range from annoyance to downright incompatibility).

<!--more-->

I often say that analytics is a discipline that is half software engineering and half research. The aspects of analytics that don't work particularly well with scrum are the parts that are more aligned with the "research" half of the analytics discipline. Research, at its core, is about the pursuit of discovery and the exploration of the unknown which does not not always fit well into the agile and scrum workflow.

# Things that don't work so well

* The fortuitous finding
* Exploratory data analysis
* Product ownership / story-writing
* Business-as-usual support

## The fortuitous finding

Often, some of the highest value insights that an analytics team generate come from someone seeing something interesting -- but totally unrelated to their current assignment -- and then pursuing it.  This type of curiosity and tenacity is something we *love* to see in analysts we hire, but the scrum process, when it becomes a well-oiled box-checking process, can squash these types of endeavors.

When you hear something like "Ooh shoot. I noticed that issue before, but I was so focused on finishing my story before the sprint ended that I didn't look closer" then you may have an issue. This "illusion of effectiveness", where the team feels like they are getting all their stories done (collecting those sweet, sweet story points) is pernicious, because it *feels* productive despite missing out on potential high-value opportunities. The Analytics team is *supposed* to be generating novel insights, which means that there has to be some tolerance for unplanned investigations.

Sometimes it feels like the only fortuitous findings that are prioritized, due to their immediate, quantifiable impact, are resolution of newly discovered data issues (e.g., I was trying to analyze website conversion rate and I discovered that we have orders without sessions). While data quality is important, and should always prioritized, it is the more novel discoveries that can ultimately have the greatest impact.

As a researcher, I often find the most valuable insights I generate come from investigating something that looked odd or interesting and was only tangentially related to the task at hand. Exploratory analysis makes up the "science" part of data science and we want to ensure that our Analysts have the time and the inclination to pursue these opportunities and generate novel insights.


## Exploratory data analysis
While exploratory analysis can start from a fortuitous finding, it can also start from general curiosity, a specific hypothesis, or the belief that no one has looked at this before, so there must me insights to be found. Exploratory data analysis is an important part of the "basic research" function of an Analytics or Data Science team. 

Unfortunately, it is very hard to write "user stories" or "acceptance criteria" for this sort of work because ... the whole point is that you are not sure what you are going to find, and it requires a researcher's intuition to know when the story is "done" (because there are always more hypotheses you *could* look into, but often those marginal investigations are not valuable).

The nature of exploratory data analysis means that the objectives of the analysis may change *as you do the work*. You sometimes realize "oh x is not actually very interesting -- the real issue is understanding y." If your scrum process is too inflexible, you can end up expending effort against tasks that are not valuable simply because they are required to get the story done. Alternatively, you can write acceptance criteria so broad (to allow for flexibility down the road) that they becomes meaningless.  While (software) engineering is a discipline of creatively applying mathematical tools to a well-defined problem, data science is about creatively applying mathematical tools to *poorly defined* problems, and it is this fundamental difference in nature that makes partitioning the work into small well-scoped tasks sometimes impossible for data science.

## Product ownership / story-writing

When you are trying to build a model of customer churn, there is some amount of judgment and art that goes into doing good data science. The acceptance criteria of "predict which customers are going to churn" is too vague to be helpful and does not capture the art of investigating a problem by poking at it from multiple sides.  Additionally, it can be very difficult for someone external to write stories or be the product owner for the team. Often, the Data Scientists or Analysts are *the* domain experts in the company and there is not anyone else who is better informed about what the next step in a research program should be. 

In user-facing product organizations, stories are often phrased like "as a customer trying to x, I should be able to y." This sort of framing often does not work well for research tasks since you are not building a product for a customer (at least directly). Finally, bringing in an external product manager can disrupt the "flow" of research and prioritize software "features" over generating valuable intelligence.

## Business-as-usual support

In many Analytics teams, there is a fair amount of business-as-usual reporting and analysis support. For example, the Analytics team may be in charge of assembling the quarterly board deck, preparing reports for the monthly business reviews, or analyzing the results of ongoing A/B tests. Additionally, Analytics teams need to be "on call" to support their business partners as questions come up ("how do I build this report?", "why doesn't this number match this other number?"). This sort of work falls outside of sprint planning, and if you don't account for it somehow, you will end up consistently missing your sprint commitments.  

Accounting for this work (and explaining it to stakeholders) can be tough, especially when it is highly variable and unplanned. You don't want to end up in a situation where you over-commit the team and end up dropping the ball on business-critical insight activities (e.g., "we have a big media opportunity, but we have to make a decision by Tuesday: can you help us figure out if we are already saturated in these markets?").

In general, the Agile approach can be foreign to non-tech companies (companies that do not have strong developer-centric cultures). To some business stakeholders, an agile Analytics team might as well be speaking a foreign language when they use terms such as "story points" and "sprint". It may also be challenging for project managers in other areas of the organization to align their Gantt charts with the sprint planning and prioritization process. This obviously becomes and issue as strong stakeholder relationships are key to the success of an Analytics team.

# Conclusion

After reading this post you may feel like scrum and analytics are completely incompatible. Agile fans, don't lose heart just yet. In my next post I will propose some adjustments to the scrum methodology that address the challenges that come with the hybrid research - engineering nature of analytics. I believe, scrum -- when adapted -- can power a high performing Analytics team that balances short term needs with the value of longer term research pursuits.
