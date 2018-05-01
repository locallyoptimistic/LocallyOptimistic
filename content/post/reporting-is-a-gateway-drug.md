---
author: Scott Breitenother
title: "Reporting is a Gateway Drug"
publishDate: "2018-04-29"
draft: false
tags: 
 - analytics
 - stakeholders
 - reporting
---

I love doing reporting. Well I don't actually love doing reporting, but I love what it can do for an Analytics team. If executed well, reporting can be the gateway drug, resulting in an organization that is completely addicted to its Analytics team. If executed poorly, the Analytics team can turn into a team of reporting monkeys - we all know what that is like. Here is some advice on how to use reporting as a means to create strong stakeholder relationships in your organization.
<!--more-->


## Setting the scene
You are starting an Analytics function from scratch and any of the following is true:

* You have no idea what an Analytics team should do
* You are still learning about your company's business model
* You have a limited technical skill set
* You have no analytics infrastructure

Extra points if your organization knows analytics is important, but does not know exactly what the Analytics team should do.

Don't panic or run for the door - take a look around. You may notice there are quite a few regular (daily, weekly, monthly) reports, typically compiled in Google Sheets or Excel. These are not simple copy and paste jobs or automated scripts that need to be run, these are complex, manual process that take up a non-negligible chunk someone's time. The source data usually sits in several different places and the transformations involve calculations, business logic and personal opinion. There is probably little to no documentation on the process and it is all in someone's head. And I know what you are thinking - no you can't just get rid of the reports - these reports are critical to running the business (e.g., what were sales yesterday). However, there may be future opportunities to optimize / rationalize the reports.


## Steps to success
So how do you take reporting lemons and make analytics lemonade?

1. Same report, but faster
2. Evolve the report
3. Add insights


### 1. Same report, but faster
You may want to come in, analytics guns blazing and transform everything day one. Let me tell you why this might not be the best idea - your stakeholders don't know you (and you probably don't know them). This is how it will go:

```
You: Hi, I am in Analytics. I just did XYZ analysis and you should now measure yourself against this new KPI I created.

Stakeholder: Um... thanks but no thanks. I am very busy and it seems like this is about to create a bunch more work for me.
```

This is not stubbornness or resistance to change. Your stakeholders operate their part of the business based on a set of metrics that have evolved over time. These metrics, though there may be room for refinement, are familiar and understood. Even in a trusting Analytics-stakeholder relationship, introducing new KPIs (or refining current KPIs) is a challenging process. If there is no existing relationship, your odds of success are pretty low. Also, as you are new to this area of business, you may have overlooked some of the nuance in the current KPIs. There is probably a good reason your stakeholder uses these particular metrics.

My suggestion is to start with the seemingly unambitious goal of producing the exact same (or a very similar) report, only faster. I can guarantee your business stakeholder will be supportive. Here is how the conversation will go:

You: Hi, can I do your reporting for you?
Stakeholder: I don't understand why you would want to do this, but I am definitely not going to say no

At first it will not actually be faster. You are not just learning how to produce a single report... *you are taking a crash course in your stakeholder's world*. It is going to take a lot of work to understand the disparate data sources, the business logic and the subjective magic behind the report. However, once you understand how to create the report (and have felt the pain of actually owning the report) you will start to see opportunities to streamline the process. At first it will be little things like formulas or macros. Then maybe you hook up the Excel file directly to the database. Before you know it, the same report takes a fraction of the time. And what do you do with that extra time?


### 2. Evolve the report
While there probably is a good reason the report is how it is, there may not be a great reason. What I mean is that logic behind the report design may be based on incomplete information or historical technical limitations. Your stakeholders might not know of all the data that is available (e.g., the platform UI spits out daily data, but the API allows you to pull hourly data). Analytics sits at the intersection of business and data. A good Analyst can use knowledge of the business and the stakeholder's goals to identify additional data sets to use. Alternatively, your stakeholders might already know about the hourly data, but not have anyone with the technical skills to pull the data. Either way there is an opportunity to evolve the report to be more accurate, comprehensive and impactful. 

There may also be opportunities to evolve the report so that it is much easier to produce (e.g., if I aggregate at a different level the report takes 90% less time to produce). Again, an Analyst that is both business and data fluent should be able understand the trade offs between rigor / granularity and efficiency. If that level of detail is truly value adding then you are out of luck, but there are very often opportunities to simplify. 

At this point you should also be fairly knowledgeable about the business. This means you may be able to use your analytics experience or learnings from other areas of the business (or other businesses) to identify additional relevant KPIs (or refine the existing KPIs).


### 3. Add insights
You did it! Your stakeholders love you for taking away their least favorite part of the job. You evolved the report to be faster to produce, and most importantly, more accurate. But Analytics is not just about automation, it is about insights. Analytics is transforming data into actionable, business outcome driving findings and recommendations. The first two steps were table stakes - they got you in the door - now you have to show what an Analyst does best.

I recommend easing in here. Don't add a cover page to the report with the title 'INSIGHTS' in large bold font at the top of the page. Start by adding a couple comments in the email you use to send out the report (sometimes the email content is so good that people stop reading the attached report). Start by commenting on general trends and proactively answering any questions that your stakeholder always seems to have. Then layer on more robust analysis that builds off the goals and content of the existing report. You now have a platform to reach leaders in the organization, publish value adding analysis and drive business strategy. Before you know it you have evolved from a reporting monkey to a trusted partner.


### Extra points: rationalize reports
Once you develop a trusting relationship with your stakeholders there may be some opportunity to reduce the reporting load. You can either reduce reporting cadence (e.g., from 5x a week to 3x) or reduce the report scope (e.g., report on fewer channels). People can be touchy with their reports, so approach report rationalization carefully. 


## Next steps
This may seem like a slow process, but it is often a slow process to earn trust and learn about a specific area of the business. You can certainly accelerate the process if the trust and knowledge is there. It is also important to remember that this is not a one time process - your stakeholders and your business continue to evolve. Stay on the lookout for opportunities to use reporting as a gateway drug.