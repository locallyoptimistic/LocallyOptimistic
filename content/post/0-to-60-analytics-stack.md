---
title: "Building an Analytics Stack in 2020"
author: "Nelson Auner"
# I can't paint like y'all do!
# cover: "/img/analysts_or_self_serve.png"
tags: ["Analytics"]
date: 2020-03-30T12:16:09-05:00
draft: false
---

Congratulations, you are launching an analytics/data function! Maybe you are the first
analytics hire at a brand new company, or perhaps you are bringing analytics to a mature
company that historically lacked a comprehensive data strategy. You sold the vision and also put together a roadmap based on your experience and current best practices. What could go wrong (and who could argue that refactoring from a star to snowflake schema is an important company-wide goal)?

The reality is that, like any other function, analytics and data exist within the
context of an organization - an organization that has competing priorities,
politics, and limited resourcing. I wrote this article to help you combine pragmatism with best practices and prepare for the discussions with engineering, finance, and possibly the senior leadership team that you did not realize you needed to have. 

Over the past 5 years, analytics technology has coalesced around three components: a data-moving tool (possibly referred by EL or ETL), a data warehouse to store beforementioned data, and a BI layer to analyze the data. As your company grows, you will also realize you need a centralized business-logic layer, as well as an org plan for empowering teams to use analytics when the company is too big for you to personally know everyone.

## ETL Tool:

- Some solutions you might consider: Stitch, Fivetran, tray.io

For finance, most data-movers costs far less than a full-time Data Engineer, so buying this component saves the company money from paying an engineer to do (unsatisfying) data work. However, some providers bill per number of rows synced, while some bill per number of unique data sources. You may find that the finance team prefers the billing structure of your second choice much more than your first choice provider! Be prepared to either convince finance that you can keep variable costs under control, or convince the sales rep to customize your contract.

From the engineering side, you may get “Don't waste money - we could do this ourselves, it is so easy”. Be prepared to ask if your well-intentioned teammate:

1. Has actually implemented and maintained a data pipeline for several years
2. Is personally volunteering to do so, for you, in a timely manner
3. Is excited to be on-call 24/7 to fix issues.


## Analytics Database:

- Some solutions you might consider: Postgres, Redshift, Snowflake, Google Cloud

There are more posts comparing analytics databases than there are rows *in* my database, so I will spare details and instead discuss a useful framework for choosing open-source vs. paid. 
It is tempting to spin up a open-source database and use it for analytics, but you should carefully evaluate if the benefit of cost savings is worth the switching costs you will incur later. 

In my case, I balked at the price of snowflake and tried to use a postgres instance for analytics because we had a small amount of data. This was dumb, because the savings of (snowflake – postgres) * (time before we needed to switch to snowflake) is less than the cost of spending time trying to diagnose random postgres issues once a week. Don't undervalue your own time!

For finance, again, different providers have different billing structures and you may not realize how much of a sticking point this can be. Additionally, your company may want to stick with the default analytics DB of the cloud provider you are already using. However, unlike data moving, there are substantial feature differences between paid options. You should be prepared to advocate for your preferred solution by articulating the value-add in terms of faster project throughput and/or lower human intervention costs.


## Business Intelligence & Visualization:

- Some solutions you might consider: AWS Quicksight, Periscope (now Sisense), Mode, Looker, Holistic, Metabase (Free), Superset (Free)

Even though the BI purchase is expensive, it's often the least contentious  since it is the only technology of the three that business people actually see! Build a value proposition by combining expected maintenance costs (in salary/opportunity cost) with the value of avoiding a bad decision due to bad data ($10K?). By my simple back of the envelope calculations, Looker ended up being cheaper than (free) Superset, because it largely runs itself and enables self-serve data exploration.

This is one of the purchase decisions that may actually merit a deck or formal document outlining the pros and cons of each option. However, I regret over-democratizing the process by involving multiple business users to help make the decision by committee. At the end of the day, making simple dashboards is similar in each system, and it is you, not business users, who will bear the burden of maintaining permissions, query accuracy, and Slack integrations. Reach out to the greater data community and hold yourself accountable to make the right decision.

I made one specific mistake here that I want to share: Looker was much more expensive than the other options, and, to explain the cost, I leaned on the value proposition of teams not needing to hire a dedicated analyst to write SQL queries. This was a mistake for two reasons:

1.  Business users still need a baseline skill level to use Looker. A surprisingly effective rule-of-thumb is that if a person is comfortable with pivot tables in Excel, they can do Looker. Do a quick calculation of how many people in your org need data, and of those, how many of them you would trust to make a pivot table.

2. There are benefits to hiring an analyst beyond simply doing SQL queries. Looker saved us from hiring an analyst, but that analyst could also have added value by connecting the dots of cross-functional business requests into product priorities. Unless you are severely budget constrained, it doesn’t hurt to have another bright technical person around, and the earlier you hire them, the better.

Here is a simple chart I wish I would have used to diagnose analytics needs:

![Analyst or Self Service](https://nelsonauner.com/images/analysts_or_self_serve.png)


This concludes the three main “courses” of an analytics stack. If you are still hungry, I will touch briefly on two increasingly necessary components as you continue to grow:

## Business Logic Layer:  
- You might consider: Looker, DBT

 Once you get to more than 3 SQL writers, each will use slightly different JOIN conditions and aggregations, and it will cause problems. These problems may be technical (the same expensive queries getting run repeatedly) but certainly analytical problems as different teams build out slightly different queries for the same metrics.
Business logic layers solve this problem by centralizing and documenting the (business logic <-> data) interface.

I was comparing DBT with Looker, but the important takeaway is to consider the tradeoffs between a comprehensive system  DBT overlaps a lot with LookML in this regard. If you don’t use Looker, you should definitely use DBT. If you do use Looker, the gains to using DBT are less. I opted to use DBT because it will make it much easier to move off of Looker, if I ever need to, allows us to use DBT’s cleaned data for data science instead of trapping that data in Looker, and has some more advanced features not found in LookML's PDTs. You can opt for DBT open source or their paid hosted version, DBT Cloud. DBT Cloud is more user friendly, but still requires a fair amount of technical knowledge to operate.

In terms of internal discussions, since dbt is either free (run yourself) or very cheap (dbt Cloud), this is likely an easy talk. I regret setting up dbt on an EC2 box instead of going directly to dbt’s paid cloud offering. dbt is much more technical than Looker, so your average business user is either going to need to level up their command line skills, or not be involved in the dbt process. dbt Cloud doesn't offer automated user provisioning, so this will be yet-another-tool to admin. C'est la vie!

## Org & On-going training:

Once you reach about 100 employees, the way you communicate cross-org is going to be more important than everything I just wrote about (unless you really screwed it up). There is a great post on this by TJ Murphy: [Lessons learned managing the GitLab Data team](https://about.gitlab.com/blog/2020/02/10/lessons-learned-as-data-team-manager/). For a deeper dive on org structure (embedded or centralized analysts?), selecting KPIs, and driving prioritization, I recommend Carl Anderson’s “Creating a Data-Driven Organization” and, of course, [Locally Optimistic blog](https://www.locallyoptimistic.com/)
