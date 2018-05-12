---
author: Michael Kaminsky
title: "Agile Analytics, Part 1: The Good Stuff"
publishDate: "2018-05-20"
draft: true
tags: 
 - agile 
 - scrum
 - process
---

Agile software engineering practices have become the standard work management tool for modern software development teams. Are these techniques applicable to analytics, or is the nature of research prohibitively distinct from the nature of engineering?

While there are many flavors of (and opinions on!) agile software development, in this post I'm going to be talking about some of the pros of using a scrum-like work management process in analytics. 
<!--more-->

In my time as a data-science individual contributor, before I was introduced to the agile process, I sort of just ... worked on whatever I wanted, for as long as I thought was appropriate (???). If someone with a big important title asked for something, I stopped whatever I was doing and worked on that. If I found a problem that I thought was interesting, I could lose entire days trying to solve it ("but really *why* does ggplot work like that?").

There has to be a better way.

For those unfamiliar, [here's a decent scrum introduction](https://apiumhub.com/tech-blog-barcelona/scrum-sprint-explanation/). The key features for us are:
* Managing work in discrete time-delimited "sprints" (two weeks is a default).
* Breaking tasks into "stories" that can be executed by team-members
* Pointing stories for complexity
* Managing and prioritizing a "backlog" of stories to be worked on.

When it comes to doing analytics and data science work, the scrum workflow has a few parts that work really well.

# Things that work well
* Acceptance criteria
* Pointing
* Two week chunks (sprinting)
* Explicit prioritization

I often say that analytics is a discipline that's half software engineering and half research. It won't surprise you, then, that things that work well from scrum are the pieces that harmonize with the software-engineering parts of analytics.

## Acceptance Criteria

The practice of writing how you'll determine when a task is done *before* starting on the task can be transformational for an analytics team. It helps focus analysts on the task at hand and avoids days lost to "rabbit-hole" investigations. It's also helpful in developing the planning and forethought muscle -- what exactly does it mean to "investigate why the conversion rate is down"?

For example, if a stakeholder comes to you and asks for an investigation into how a new email campaign impacted the business, you could have ACs like:

* Compare the open rate, click rate, and conversion rate to a similar email from last year
* Compare the email unsubscribe rate with a control group receiving business-as-usual emails to check if we drove unsubscribes
* Compare the average cumulative gross profit per customer for thirty days following the email send with the control group to check if we just "pulled forward" sales or if we actually drove truly incremental profit.

Writing these out at the beginning of the task puts everyone on the same page about exactly what is in scope for this analysis, and what we can expect to review when we're done. Sharing this with your business partner can often elicit additional useful information like ("I actually think this other email would be a better comparison for x reason.")

Without acceptance criteria, you can more frequently encounter the frustrating situation where an analyst spends multiple days working on the wrong question. Getting the objectives *written down* up front can save you a lot of headache and lost time.

## Pointing

Points are assigned to stories reflecting the amount of complexity in the work. I've found it very useful to "point" stories as a team when using those points to compare the relative complexity of different tasks. In particular, this exercise can generate great conversations between researchers about how they might approach a problem ("x is simple, but it's flawed for y reason").  Additionally, when a task has a really high point total it's a good sign that you need to spend some more time thinking through how to break the task down into simpler, component parts.

Additionally, tracking both velocity as well as the amount of tasks or stories that are added to a sprint outside of the normal planning process can be an incredibly useful tool for communicating with stakeholders and optimizing the workload. If you notice that half of your effort is getting allocated to one-off tasks that "pop up" outside of what your team is ostensibly committing to, you may want to revisit your process for triaging those asks!

Following our email example above, we might estimate that story at 13 points, a pretty big story (points are made up and all relative, but let's assume 13 is pretty big under our paradigm); there's some complexity associated with getting data out of our email system, and we're a bit worried that estimating the pull-forward effect could open a can of worms. Given how complex this is, we know that we'll need to delay working on the other big story we had scheduled for this period, so we're able to alert the appropriate stakeholders. If there's internal disagreement about the relative priority of these tasks, we can use the complexity estimates to structure our trade-off conversations.

Here's an example of a story with ascending point complexity (using fibonacci pointing):
* 2: Pull a conversion report on our new email campaign.
* 5: Report open, click through, conversion, and unsubscribe rate. Compare to previous campaign.
* 8: Examine net improvements in the rates compared to a control group and compared to the previous campaign.
* 13: Do all of the above, and determine what proportion of the impact is simply pull-forward revenue.

## Two week chunks (sprinting)

The pacing of a two-week sprint feels really good for doing analytics work. You have a built-in cadence for planning and prioritization meetings, and you end up with a nice firm upper limit on how long a research task can take without it surfacing to peers.  The cadence of  "sharing out" the results of what the analytics team accomplished generates both discipline and visibility. That additional bit of time pressure can often be a forcing function for healthy conversations about what scope to cut and what to keep ("I was going to run an additional sensitivity, but is it really that valuable?").  

Additionally, the sprint process allows for coordinating work between analytics and engineering teams: If a story the analytics team is trying to deliver is blocked on getting additional data into the warehouse, you can coordinate your sprint planning (what happens in sequence? what in parallel?) with the data engineering team and update deadlines and goals accordingly. 

One thing I love to do is a show-and-tell at the end of every sprint. We can bring all of the analysts together to show off what they've accomplished over the last few weeks. One analysts might show a new dashboarding tool she's built, and another might walk through a python notebook they wrote to model the drivers of customer retention. This holds analysts accountable to delivering something they're able to demo every two weeks and also helps share context across the organization.

## Explicit Prioritization

Regularly bringing in stakeholders to review the backlog and align on prioritization is one of the most important things you can do as an analytics leader. The scrum process relies heavily on this explicit prioritization, and it gives you the tools to talk about what you are "committing" to and how different tasks of different complexity are getting done.  Of course, choosing which stakeholders to involve in this process is always a challenge (especially since there often isn't one PM who is owning the prioritization). I generally recommend utilizing two tiers of communication: 

1. The first tier are people who are actively involved in relevant ongoing projects (business partner stakeholders); this group should be able to directly discuss trade-offs in scope and actively participate in your sprint planning meeting. This group will likely change over time as the projects that you're actively working on are completed (once you've completed the v1 distribution and logistics KPIs project, the distribution team member may not need to show up again). Of course, it's critical that all of these partners are empowered to represent their teams' needs so the in-person prioritization meeting can be effective.

2. The second tier is a much broader range of stakeholders (executive team members, past partners, future partners); this group should be updated on the outcome of the planning meetings so that they have visibility into the current priority stack. This not only gives them visibility into all of the valuable work the analytics team is doing, but also can generate ideas for new analytics projects ("I want  a dashboard like that for my team too!").

# Conclusion

The scrum process can be a really helpful tool for managing analytics work: it provides insight into effort allocation to the team, the manager, and key stakeholders. It promotes healthy prioritization practices and blocks some analysis-rabbitholes. 

Unfortunately, this process also comes with some difficulties which I'll be discussing in my next post.
