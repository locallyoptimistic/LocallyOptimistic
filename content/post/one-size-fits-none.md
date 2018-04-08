---
author: Michael Kaminsky
title: "One Size Fits None"
date: "2018-02-11"
tags: 
 - analytics
 - org
 - team
---

People often ask us for advice about building out an analytics organization -- How to structure the team? What skills to hire for? Do we need engineers? What about data scientists? How big should the team be? Unfortunately, there's no easy answer to these questions because the best analytics team is the one that is best able to support the organization as a whole, and different organizations may have very different needs.

In this post we'll discuss some of the different dimensions that are import to evaluate when thinking about how to structure an analytics team, and we'll discuss how those different dimensions led us to build very different teams at Casper and at Harry's. 

## Important Dimensions to Consider

* Ambient technical ability at the company (is the company made up of former software engineers or former creatives?)
* Baseline level of analytic ability (what's the likelihood that a randomly selected person in the company will know how to use a pivot table?)
* Distribution and variance of analytical skills (is there a wide variance where some teams have more skill than others?)
* Engineering support (How much dedicated engineering support can you rely on?)
* Business Intelligence vs Statistical Learning (Are you trying to generate reports for operational measurement or build complex models to feed into your product?)

We'll take a closer look at how each of these dimensions may impact the needs for an analytics team.

### Ambient Technical Ability 

If your company is a software or technology company filled with software engineers (and former software engineers) then the types of work your analytics team may do will vary greatly from a company that is filled with marketers and creatives. In a company of former software engineers you can go for quite a long time sharing ipython notebooks or the output from R scripts, and you can build command-line tools and expect that people will be comfortable using them. If your company is not super software-saavy, you can expect to spend much more time building (or buying and implementing) software that has nice user-friendly GUIs. 

Since most analytics work is about serving internal clients and meeting them where they are, it's important to understand how user-friendly the tools you build will need to be so that you can staff appropriately.

### Baseline Level of Analytic Ability

Some companies are highly analytical, staffed by bankers and consultant-types who are extremely comfortable understanding, interacting with, and modifying complex excel models. Some companies have a much lower level of analytical fluency where excel pivot tables may be unfamiliar and rocky terrain. The degree of analytical skill in your business partners will determine both how big your analytics team needs to be as well as the type of work you'll do. 

In a highly analytical organization, the analytics team will likely spend more time on infrastructure and tooling -- how can we get the data to our users in a form so that they can do their own "last mile" analysis for whatever their purpose is. In this situation you likely need fewer, more technical analysts.

In a less analytical org, the analytics team will spend more time actually doing analyses -- putting together excel models, summarizing results in a deck, and sharing out the implications. In this situation, you likely need more less-technical analysts (as a lot of the work is relatively straightforward "BI").

### Distribution and Variance of Analytical Skills

A very interesting situation arises when you have multiple partner teams of varying skill-levels: maybe the acquisition marketing team is extremely data saavy but the supply chain team is not. In a situation like this you have to think carefully about how to meet the different needs of these different teams *efficiently*. You'd want to empower the acquisition marketing team without getting in their way, and you'd want to make sure that you're not leaving the supply chain team in the lurch with tools they can't use.

This is a common problem we've observed where the "power users" on one or two teams end up being the only ones in the organization who can really make use of all of the data available because they're the ones most often interacting with the analytics team. It's important to think about how everyone, not just the most technically saavy, is able to leverage the tools that your buidling.

### Engineering Support

This section likely deserves a blog post of its own, but knowing how much software engineering support you'll get from the rest of the tech team is critical to building a high-functioning analytics organization. If the tech team does not have an "internal tools" function and is primarily focused on revenue-generating activities (like, say, running an e-commerce website) then you might struggle to get resources allocated to working on analytics and data projects. In this world, it may make sense to hire either hyper-technical analysts who can build their own tools, or even hiring data-focused software engineers directly onto the analytics team.

### Business Intelligence vs Statistical Learning

Perhaps most importantly, it's critical to understand what the most pressing problems are for your organization. Do you need to build complex models for prediction or deep customer insights, or do you simply need to provide reporting and business intelligence services competently? Pretty much always it's a mix of both, but it's important to think hard about where on the spectrum your organization falls, and what that implies about your staffing decisions. 

Obviously a team of data scientists or stasticians with graduate degrees is going to work on very different problems than a team of BI analysts with only a few years of experience.

## Analytics at Harry's (Michael)

When I joined Harry's as the first dedicated analytics hire, I was shocked to find that the organization was already consistently performing very sophisticated analyses. Because the team (at the time) was made up largely of former consultants and bankers, there was no shortage of analytic talent at the excel-modeling and visualization level, but there was a large shortage of tools to help them perform their tasks quickly and efficiently. We had lots of self-taught SQL users but no one thinking about the data models that would simplify their multi-hundred line queries into simple reports. We had lots of complicated excel models, but no way to distribute those outputs to others in the organization. 

Because we had so many people across the team who could self-serve analyses at a very high level, I focused all of my attention on building the tools that could empower each of those individuals to work more effectively. The "analytics" team therefore did very few analyses, but invested a lot of time in software engineering to support the analyses being done by the rest of the organization. We focused on building great data warehousing tooling with sane data models so that our power users could self-serve more effectively. Our goal was to get clean, consistent data into the hands of our users so they could do all hte "last mile" analyses and modelling themselves.

This of course required that we hire an extremely technical analytics team. In addition to hyper-technical data analysts, We hired "analytics engineers" who could help us write the production software we needed to support the tools that fit best with the needs of our organization. During the first two years the team existed, we spent the bulk of our time building tools rather than actually doing analyses.

As the organization has grown and we've started hiring more domain experts with less generalized analytics experience, the analytcs team has had to start providing more actual "analysis" support across the company. As such, the relative proportion of analysts to engineers has shifted accordingly and we spend a lot more time thinking critically about the business questions facing the company and how we can actually use the tools we've built to answer them. While we still work hard to build useful tools, we remain cognizant of the needs of our business partners and are always adjusting to meeting them where they are.

## Analytics at Casper (Scott)
