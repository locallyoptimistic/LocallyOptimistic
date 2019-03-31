---
title: "KPI Principles"
author: "Ilan Man"
cover: "/img/cover.jpg"
tags: ["analytics", "KPI"]
date: 2019-03-30T21:19:01-04:00
draft: true
---

Everyone wants to know how their business is doing. They also want to know what the levers available to them are, and how to see if those levers make a difference. Enter the Key Performance Indicator (KPI). KPIs are a common tool for quantifying the performance of your business. They're also a symbol for folks in the organization to rally around and anchor against, providing clarity and aligning cross departmental objectives.

<!--more-->

There is a lot of content out there on what a KPI is (and what a metric is, and what a measure is, ..) and why they are important[^1]. This content is also usually written for non-analysts -- useful, but invariably leaves me wanting more. Today I'm going to outline a few key principles related to KPIs aimed specifically at analysts and data scientists. I think about KPI principles along two levels:

<li> The KPI itself
<li> The context for the KPI

As I've done a few iterations of working with stakeholders to determine KPIs, I found the above to be helpful in structuring my approach.

## KPI specific principles

Before considering who the audience is or where the KPI will live, there are a few important KPI centric considerations to work through.

### Start with KPIs that you can affect

Some KPIs are vanity metrics that folks need to internalize but don't expect to affect much, if at all. Most "All time" numbers qualify as vanity metrics. It's great to know how many subscriptions you have for PR or morale or for a board meeting, but not very useful in your day to day. Other KPIs are directly _affectable_. These KPIs are very specific and may only apply to a handful of folks on a given team. Examples include:

* Average page load time
* Number of outages in the past 7 days
* Time between Step A and Step B of the user journey (where A and B are roughly in your control)
* % drop off between Step A and Step B, by relevant cohort

You and the stakeholder directly responsible for the process that the KPI is capturing should use your collective judgement in determining how much influence ya'll have on the KPI. I wouldn't bother quantifying the amount of influence, but be intentional about why you think you can change this KPI. 

### Develop an action plan ahead of time

Now that you've identified some KPIs that you can affect and are worth tracking, take the hard step and think about what you'll do when this KPI does change. Don't wait for it to double next month before putting together an action plan. I always ask my stakeholders: "If this KPI declines by 10%, will you do anything about it? What about 50%? And if so, what exactly and why?". This is a good check against having too many useless KPIs. The action plan is key -- you're not asking for a manifesto, just some thoughtfulness and intentionality.

### Don't overreact to every change

Related to the above, just because the KPI varies doesn't necessarily mean you should react to it. How frequently does your business change in ways that may alter the KPI. Roughly speaking, KPIs that jump around very frequently warrant less reaction than those that show secular increases or decreases over meaningful time periods. Three options you have to better interpret your favorite, excitable KPI:

* Smooth it out. Popular methods include 7 day rolling averages or some [decay factor](https://en.wikipedia.org/wiki/Exponential_smoothing) -- just make sure that the transformed KPI doesn't lose too much of its original meaning.
* Be skeptical of % changes -- fractions, especially if the numerator and denominator jump around, are extremely hard to pin down. When numbers are small, expect 200% deltas or the like.
* Control for cohorts -- this should always be true for time-based KPIs. Remember that cohorts of different ages will mature in different times and make some apples-to-apples comparisons more difficult. 

Reviewing KPIs at the appropriate cadence will take a few iterations, but if you pair the affectability of a KPI and have an action plan already, then it'll help you take a structured approach to understanding and acting on the information if provides.

## Everything else

Now that you've settled on a reasonable set of KPIs that are affectable by your stakeholders and they have a reasonable sense of what to do as it moves around, how does it fit into the bigger picture?

### Ensure that it makes sense for your organization

Some KPIs may be very specific indeed, and only a few folks on a certain team will care. It's critical, however, that every KPI is related in some way to other KPIs elsewhere in the organization. Specifically, teams can't optimize in silos. Improving a KPI on one team should not come at the expense of another team. One ubiquitous example of this is bringing in lots of leads that don't end up converting down stream. Marketing may be crushing their top line goals but Product ends up overloaded with unqualified users who drop out of the acquisition funnel.

Another example: Finance wants to achieve a specific profit margin in a business line, and they identify some cost cutting measures, which mean that some teams need to change their priorities. Both of those functions need to work together to determine how they'll achieve their objectives without creating friction.

### KPIs die in darkness

In addition to being aligned across teams, KPIs should be "vertically integrated". Consider a [DAG](https://en.wikipedia.org/wiki/Directed_acyclic_graph) -- Company level KPIs are supported by Team level KPIs which are in turn supported by individual KPIs. It needn't be one to one, but there should not be any down stream KPIs which do not in some indirect way support an upstream KPI. Figuring out how they are related is a useful exercise and ensures everyone is working towards the same goals. I like to sketch these out and make visible to all teams.

### Find a partner

Every organization has a different level of data sophistication. In general though, you should find one stakeholder per team or function that will act as your thought partner. Work with this individual to iron out the details outlined above, including the actual definition of the KPI. For example, if you wanted to count the growth in Monthly Active Users, it's crucial that your definition and calculation lines up with what the business expects. 

* Does "monthly" mean past 30 days or as of the end of the previous full month?
* What is an "active user"? At least one click? At least one share? And does everyone on the team agree with this defintion (hint: put this in your [data dictionary](https://www.locallyoptimistic.com/post/building-a-data-practice/))?
* How are you thinking about growth? Is it vs. the last 30 days? This time last year?

These are details that usually come at the end, but are important to iron out because they'll help provide the context for how to interpret the KPI.

## Conclusion

Everyone wants KPIs, but many folks struggle with articulating the what and the why. Hopefully the above will help you in your conversations with stakeholders and in your own thinking when considering what KPIs are most important for your business.


[^1]: I won't be addressing the difference between a KPI, a metric or a measure. Those nuances aren't relevant to our discussion.



