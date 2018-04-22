
---
author: Michael Kaminsky
title: "Agile Analytics, Part 1"
publishDate: "2018-06-03"
draft: true
tags: 
 - analytics
 - agile
 - scrum
 - process
---

Agile software engineering practices have become the standard work management tool for modern software development teams. Are these techniques applicable to analytics, or is the nature of research prohibitively distinct from the nature of engineering?

While there are many flavors of (and opinions on!) agile software development, in this post I'm going to be talking about some of the pros and cons of using a scrum-like work management process in analytics. 
<!--more-->

In my time as a data-science individual contributor, before I was introduced to the agile process, I sort of just ... worked on whatever I wanted, for as long as I thought was appropriate (???). If someone with a big important title asked for something, I stopped whatever I was doing and worked on that. If I found a problem that I thought was interesting, I could lose entire days trying to solve it ("but really *why* does ggplot work like that?").

There has to be a better way.

For those unfamiliar, [here's a decent scrum introduction](https://apiumhub.com/tech-blog-barcelona/scrum-sprint-explanation/). The key features for us are:
* Managing work in discrete time-delimited "sprints" (two weeks is a default).
* Breaking tasks into "stories" that can be executed by team-members
* Pointing stories for complexity
* Managing and prioritizing a "backlog" of stories to be worked on.

When it comes to doing analytics and data science work, the scrum workflow has a few parts that work really well, and  few parts that don't. 

# Things that work well*
* Acceptance criteria
* Pointing
* Two week chunks (sprinting)
* Explicit prioritization

I often say that analytics is a discipline that's half software engineering and half research. It won't surprise you, then, that things that work well from scrum are the pieces that harmonize with the software-engineering parts of analytics.

## Acceptance Criteria

The practice of writing how you'll determine when a task is done *before* starting on the task can be transformational for an analytics team. It helps focus analysts on the task at hand and avoids days lost to "rabbit-hole" investigations. 

It's also helpful in developing the planning and forethought muscle -- what exactly does it mean to "investigate why the conversion rate is down"?

## Pointing

Points are assigned to stories reflecting the amount of complexity in the work. I've found it very useful to "point" stories as a team when using those points to compare the relative complexity of different tasks. In particular, this exercise can generate great conversations between researchers about how they might approach a problem ("x is simple, but it's flawed for y reason"). 

Additionally, when a task has a really high point total it's a good sign that you need to spend some more time thinking through how to break the task down into simpler, component parts.

## Two week chunks (sprinting)

The pacing of a two-week sprint feels really good for doing analytics work. You have a built-in cadence for planning and prioritization meetings, and you end up with a nice firm upper limit on how long a research task can take without it surfacing to peers.

The cadence of  "sharing out" the results of what the analytics team accomplished generates both discipline and visibility. That additional bit of time pressure can often be a forcing function for healthy conversations about what scope to cut and what to keep ("I was going to run an additional sensitivity, but is it really that valuable?").

## Explicit Prioritization

Regularly bringing in stakeholders to review the backlog and align on prioritization is one of the most important things you can do as an analytics leader. The scrum process relies heavily on this explicit prioritization, and it gives you the tools to talk about what you are "committing" to and how different tasks of different complexity are getting done.

# Things that don't work so well:
* The fortuitous finding
* Exploratory data analysis
* Product ownership / story-writing

The parts of scrum that don't work so well for analytics are the parts that are more aligned with the "research" half of the analytics discipline.

## The fortuitous finding

Often, some of the highest value insights that an analytics team generate come from someone seeing something interesting -- but totally unrelated to their current assignment -- and then pursuing it.

This type of curiosity and tenacity is something we *love* to see in analysts we hire, but the scrum process, when it becomes a well-oiled box-checking process, can squash these types of endeavors.

When you hear something like "Ooh shoot. I noticed that issue before but I was so focused on finishing my story before the sprint ended that I didn't look closer" then you may be suffering from this.

## Exploratory data analysis

Exploratory data analysis is an important part of the "basic research" function of an analytics or data science team. Unfortunately, it's really hard to write "user stories" or "acceptance criteria" for this sort of work because ... the whole point is that you aren't sure what you're going to find.

How do you fit this type of work into a scrum workflow?

## Product ownership / story-writing

When you're trying to build a model of customer churn, there's some amount of judgement and art that goes into doing good data science. The acceptance criteria of "predict which customers are going to churn" is too vague to be helpful and doesn't capture the art of investigating a problem by poking at it from multiple sides.

Additionally, it can be very difficult for someone external to write stories or be the product owner for the team. Often, the data scientists or analysts are *the* domain experts in the company and there isn't anyone else who is better informed about what the next step in a research program should be. Bringing in an external product manager can disrupt the "flow" of research and prioritize software "features" over generating valuable intelligence.

# Conclusion

Scrum is a great process for running an analytics team, but there are some definite problems / rough spots.

In my next post, part 2, I'll discuss some adjustments to this process that you can use to make the scrum process more suitable for data science and analytics work.
