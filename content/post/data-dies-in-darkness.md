---
author: Michael Kaminsky
title: "Data Dies in Darkness"
date: "2018-02-25"
tags: 
 - analytics
 - data quality
 - org
---

# Data Dies in Darkness

## Building the Data Quality Flywheel

The fastest way to doom an analytics team (and any hope of building a data-driven organization) is to present data and analyses that are often flawed or inconsistent. When people don't believe they can trust the data, they'll stop using them (and, if you're an analytics leader, you might be soon looking for a new job).

There are two techniques I rely on for ensuring data and analytical quality:
1. Analysis audit and code review
2. The internal data quality flywheel

While the first technique (good analysis review) is very important, in this post I'm going to focus on the second which is an incredibly powerful tool for thinking about not only adding value as a data and analytics team, but will pay ongoing dividends in data quality for years to come.

When people talk about data quality, they often describe the *symptoms* of data quality issues. Like:

* Reporting numbers changing over time
* Unclear definitions of metrics
* Inconsistent numbers across teams or reports

These symptoms are generally driven by a few root issues:

* Lack of a central repository of conformed data (single source of truth)
* Disagreement or misalignment about how business phenomena or KPIs ought to be measured
* Unnoticed ["data drift"](https://streamsets.com/reports/data-drift/) as business-logic assumptions or data integrations get stale

My personal motto for improving data quality, adapted from [The Washington Post](https://www.washingtonpost.com/lifestyle/style/the-washington-posts-new-slogan-turns-out-to-be-an-old-saying/2017/02/23/cb199cda-fa02-11e6-be05-1a3817ac21a5_story.html?utm_term=.3b9fcbc03a44), is that "Data Dies in Darkness" (which is an appealingly more dramatic phrasing of "sunlight is the best disinfectant"). The easiest way to promote data quality is to have as many eyes on as many pieces of data as possible -- this way potential issues are quickly identified and fixed rather than "festering" and slowly degrading trust in the entire system.


Most organizations can dramatically improve their data quality by following a few simple practices:

1. Put everything in the data warehouse, and let the analysts own the business logic for data transformations 
2. Identify the "business owner" for every KPI
3. Automate all data-driven workflows
4. Dashboard everything, and send emailed reports (including relevant executives) at a regular cadence
5. Make heavy use of "data quality" alerts and monitoring

I'll take each of these recommendations one-by-one:

## Put everything in the data warehouse, and let the analysts own the business logic for data transformations 
All data important to the business should be in the warehouse[^1]. Period. This allows for an easy demarcation between what is "approved" as the single source of truth for the business and what is "potentially unreliable." Additionally, there are strong "network" effects to data -- the more data you have in the warehouse, the more value you can get from all of the other data that are available.

That analysts have the ability to make changes to (and the responsibility for!) the warehouse is key because they are the link between the folks operating the business and the reporting tools. The analyst's role as "data doula" responsible for translating actual business concepts into data models is key, and your infrastructure should support a fast-feedback loop where the analysts can quickly work on and update data transformation logic in close partnership with the team or person who is operationally responsible for the data. If it takes weeks to get a ticket for a data-transformation change through your engineering organization, your partners will have already abandoned your tool (and lost faith in you).

Businesses (and especially startups!) can change rapidly, and the data and reporting tools need to be able to change just as fast if they are to remain relevant. Training analysts to build and maintain these data tools is crucial to building a data platform that is sufficiently flexible to support the shifting needs of the business.

## Identify the "business owner" for every KPI
The easiest way to incentivize someone to monitor data quality is to make a metric part of their performance review. The web product team should be responsible for conversion rates, and the distribution team should be responsible for shipping times. If you can surface the KPIs that are most important to their roles (in partnership with them, as the domain experts) you will have recruited a data quality auditor who jumps out of bed every morning to check on their performance. If something screwy is going on with the data, trust me, you'll hear about it.

## Automate all data-driven workflows
In addition to holding teams accountable for goals and metrics, an analytics team can drive data quality partnership by automating manual but data-driven tasks. If you can automate the task for someone (provide them value) while still keeping them responsible for the output, you can get their ongoing help in monitoring the ongoing data quality. The key here is that people are often doing "data quality" monitoring during their workflows, but those checks never get surfaced outside of that individual's workflow. You really want that person to be checking data quality in your central data warehouse so that way everyone in the company benefits.

For example, maybe it's someone's job to once-a-month report out on distribution costs by product mix. Because the systems weren't designed to be integrated, this involves some fairly tedious excel work (download some stuff from system x, find the email from person y, index-match and pivot). In this work-flow, if there's any data issues, they are quickly caught by the person doing this reporting work ("that doesn't look right, I need to check z.") 

If you can automate this workflow, you can automate the data quality checks, and rather than having a person doing quality checks on their local laptop, you can get them checking the warehouse for quality (where everyone benefits). For example, maybe you can scrape the report from system z, automatically capture excel reports sent via email, and perform the remaining joins and summaries in SQL.

Now, not only do you have these data in the warehouse available for other uses, but you also have another recruit who is helping you monitor data quality.

## Dashboard everything, and send emailed reports (including relevant executives) at a regular cadence
It should be easy for anyone in the business to find and explore any piece of data that is interesting to them. This means building lots of dashboards that are continuously monitoring the business's KPIs. Sunlight really is the best disinfectant: you'll catch data quality issues much more quickly if you have the whole company monitoring the data on an ongoing basis. You should encourage people to reach out with questions if they see something that looks wrong.

In addition to simply making the dashboards available (and ideally searchable!) you should try to schedule regular email reports that go out to wide audiences. If the people operationally responsible for the metrics in the dashboard know that it's going to be sent to their boss on Tuesdays, they'll be extra vigilant when it comes to making sure the data reflected there-in are accurate and up-to-date (so they don't have to field an email from their boss asking "WTF?").

## Make heavy use of "data quality" alerts and monitoring
Finally, you should develop tooling for programatically alerting you to data quality issues. If you rely on a "mapping" table for data quality (e.g., SKUs to prices) then you should set up an alert if there are rows missing in that table ("ALERT: SKUs found in warehouse without a corresponding mapping"). Similarly, you can check when the "rate" of something dips above or below a certain threshold ("ALERT: more than 10% of orders are missing corresponding UTM tagging information.") This allows your team to pro-actively identify and monitor potentiall issues rather than being caught off guard when a business partner sees some crazy looking data three weeks later.

When you catch a problem and correct it, notify the stakeholders in case they also saw something funny and didn't mention it, and to demonstrate the pro-active monitoring to build trust.


# Conclusion
Data quality is a journey, and you'll never have perfect data quality. What you can have are systems and processes that allow you to catch data quality issues early, respond to them quickly, and build ongoing trust with the rest of the business. The more people there are in the organization who feel responsible for data quality (even if it's ownly within their operational domain) the better your system as a whole will be.


[^1]: Other places you might find business-critical data: spreadsheets on someones desktop, CSVs attached to an email, miscellaneous application databases, 3rd party analytics tools, etc.
