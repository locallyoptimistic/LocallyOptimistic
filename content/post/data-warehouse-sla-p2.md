---
author: Scott Breitenother
title: "Should Your Data Warehouse Have an SLA? (Part 2)"
cover: "/img/data-warehouse-sla-p2.jpg"
publishDate: "2018-06-24"
draft: true
tags: 
 - analytics
 - data warehouse
 - SLA
---

Your data warehouse needs a Service Level Agreement (SLA). To help get you started, in [part one]({{< relref "data-warehouse-sla-p1.md" >}}) I introduced a date warehouse SLA template - a letter addressed to your stakeholders. In this post I walk through the meat of the SLA template: services provided, expected performance, problem reporting, response time, monitoring processes, issue communication and stakeholder commitment. If you have not already read [part one]({{< relref "data-warehouse-sla-p1.md" >}}), I highly recommend reading it first!
<!--more-->

## Writing your SLA

### Services provided
At a 30,000 foot level the data warehouse provides data access. However, I recommend going as specific as possible when describing the data services provided in your SLA. Greater specificity helps to align expectations on which fields are included and the definition of those fields (specificity also helps to frame future discussions when adding additional fields to the data warehouse). Field definition becomes increasingly important when the data is used to calculate individual performance and compensation (e.g., sales team commission, executive bonuses).

The counter point is that you don't want to go overboard - you are a Data team, not a Documentation team. You are not discovering new insights and unlocking value for the business if you spend all your time working on a data dictionary. The perfect level of detail, unfortunately, is a moving target and it will continue to change as your business grows in size and complexity. One thing, however, is clear: you should not expect to have a detailed data dictionary when you are a ten person startup. Find the right balance between specificity and the resources available to you.

Here is an example of how your definition of services provided (for sales data) might evolve as your data warehouse SLA becomes more sophisticated:

1. Business area: "The Data team promises to provide sales data"
2. Question: "The Data team promises to provide data to answer the following questions: What were sales yesterday?..."
3. KPIs over key dimensions: "The Data team promises to provide sales and conversion rate over time and by channel"
4. Detailed definitions: "The Data team promises to provide tier one and two sales metrics as defined in our data dictionary, found on our intranet"


### Expected performance
Imagine you find a magic data genie and you ask for the most detailed sales data in the world. You start flipping through the data and everything looks AMAZING... until you realize the data is two years old. That wish could have used a definition of expected performance. This is the area of the SLA where we move from "what" will be delivered to "how" it will be delivered.

Here are some common aspects of expected performance to include in your SLA:

* Data freshness: How current is the data? Is the data live, updated every hour or ready at 7am every morning? A potential approach is to categorize KPIs / models / data sources using "tiers of freshness" (e.g., intraday, daily, weekly) 
* Query speed: Query speed is a challenging aspect to quantify as your data warehouse most likely supports several different use cases (types of data and queries). Average query run time is a good place to start, but you may need to create a more nuanced metric (e.g., X% of queries finish in <Y seconds)
* Data reliability / quality: Certainly you aspire to produce correct numbers, but it may not be possible to ensure perfection. I recommend tiering KPIs with descending levels of reliability - from your "bullet proof" metrics down to the numbers you put in the data warehouse for someone, but have not QA'd yet. I also recommend investing in the [Data Quality Flywheel]({{< relref "data-dies-in-darkness.md" >}}) to make data quality everyone's responsibility
* Ease of use / documentation: This can be a general commitment to deliver the data in a way that is simple and easy to use. However, you can also commit to producing detailed documentation (e.g., tool tips in your business intelligence tool, data dictionary)

While you should strive to build a robust analytics stack, you may never achieve the same reliability as your company's production level systems. For example, it is reasonable to expect that the systems that run the website of an ecommerce company will be more robust than the systems that run their data warehouse. It costs a lot more when the website is down than when the data in the data warehouse is stale. You could certainly build a robust data warehouse with production system level reliability - it all comes down to whether it makes sense to do this given your limited resources.

The challenge, however, changes when you have [intelligent applications]({{< relref "data-platform.md" >}}) in production that utilize your data warehouse (e.g., automated post purchase emails powered by your data warehouse). In this case you must define and deliver on a significantly more robust SLA. Supporting production systems doesn't just require more resources, it requires an entirely different mentality.

### Problem reporting
Despite your best efforts, something will go wrong and the Data team might not be the first to discover it (hopefully it is something small!). Clear problem reporting procedures eliminate confusion and ensure the right people know about this issue (avoid situations like "but I told Steve about the issue with X KPI last week" or "my most important KPI looks wrong and my Data team point of contact is on vacation"). 

Your issue reporting tool can be as simple as a Google form, a data issues email alias or a Slack channel. I recommend a public forum so that others see the reported issues (one person saying the sales data is wrong is helpful, twenty people reaching out becomes distracting). When possible, try to avoid in person communication (or at least make sure you send an email or Slack to memorialize the in person discussion) - this will be helpful if you need to write a post mortem.


### Response time
When stakeholders report issues, they deserve a response. At minimum you should acknowledge the issue and provide a rough idea of the response time. I know it may be tempting not to respond to stakeholders when they report an issue, especially when you are underwater. However, a little acknowledgment goes a long way, even if your response is "I hear you. Everything is broken right now. I will get to it as soon as possible".

I recommend defining an objective severity scale with associated response times in your SLA - this will save you from guessing every time you have a data warehouse issue. Typically severity is measured by number of people impacted (employees or customers), lost revenue or importance of the use case (e.g, we need this report for tomorrow's board meeting).

It may not be a perfect fit, but your Tech team probably has a issue severity scale that you can borrow as a starting point. The added bonus of using your Tech team's scale (or a tweaked version of it) is that your company will already be familiar with it and you will need to do less stakeholder training.

In addition to the scope of the problem, it is also helpful to categorize data issues in one of two buckets: stale data or wrong data. An ETL issue may result in stale data in a report sent to everyone in the company. From the perspective of number of people impacted, this would be pretty high severity. However, if everyone is aware that they are seeing yesterday's data there should be less of an issue. The real issue is when your stakeholders use incorrect data and don't know it.  

As as side note - whenever I encounter a stale data issue, I always think of this quote from the late comedian Mitch Hedberg:

>"Escalators don't break, they just temporarily become stairs. There should never be a sign that says 'Escalator Broken, Sorry for the Inconvenience'. It should say 'Escalator Temporarily Stairs, Sorry for the Convenience'"

I think the data warehouse version of the sign is:

>"Data warehouse temporarily has data from the launch of our business through two days ago, sorry for the convenience"


### Monitoring process
Monitoring your data warehouse creates both short term and long term value:

* Short term: Identify specific issues so that you can fix them (e.g. ETL issue)
* Long term: Measure overall performance against SLA so you can identify and correct underlying issues

I believe it is best to catch data issues before your stakeholders do. The most effective method is to develop a suite of human (e.g., look at a few key reports every day) and automated tests (e.g., uniqueness, null values, big swings in key metrics). In young data organizations you predominantly see human tests, but as the organization matures the balance tends to shift to automated testing. In more sophisticated organizations "test coverage" is an important metric when building out ETL. 

It is great to quickly catch data issues, but ideally you want to stop them from happening in the first place. By monitoring your Data team's overall performance against SLA (e.g., data is fresh by 7am only 60% of the time) you can identify recurring issues and prioritize the areas to focus your efforts. Moreover, exploration of the trends may help to identify the underlying cause of issues (e.g., "we started missing our 7am target when we migrated from compute to storage nodes"). As an added bonus, sharing your overall performance trends (and your efforts to improve them) with your stakeholders will help to build trust.


### Issue communication
You or one of your stakeholders noticed some of the data was off - how do you inform everyone who is impacted? The communication methods should be guided by the severity and breadth of the issue (you can use the same severity scale as you use for response time).

The most efficient way to inform your stakeholders is through the platforms / methods they use to consume the data. If your stakeholders consume the data through an automated report emailed to the team every morning, reply all with an explanation of the issue and the estimated time to resolution. If your stakeholders consume the data through your business intelligence tool, display a warning at the top of business intelligence tool (this is a very effective method of communication, but is not available on many systems).

If the methods listed above are not an option and the data issue is severe (scope of impact or risk of making bad decisions) it is best to over communicate. You have a duty to make sure your stakeholders are aware. Send a company-wide email or slack message and, because some people may not read your message, go around to individually speak with the stakeholders that are most likely to use the affected data. 

If the data issue is small, you can probably get away with sending a message to your power users. If you use a "Data" Slack channel for your stakeholders to report data issues and ask data questions, you can use the same channel to communicate when the Data team identifies an issue. Otherwise, you can create a power user email distribution list for important announcements.

### Stakeholder commitment
I spent most of this two part post exploring the obligation from the perspective of the Data team. However, in order to effectively deliver on your data warehouse SLA, your stakeholders must be collaborative partners. In the context of the SLA, collaboration means communication throughout the data life cycle. At a minimum, stakeholders should involve the Data team when they begin to think about:

* Bringing on a new data source: Early involvement allows the Data team to evaluate the vendor (does it have an API?) and begin to think about how the data source fits within the existing architecture 
* Defining a new KPI: It is better to add fewer, well defined and well understood KPIs to your data warehouse. The Data team can help identify which KPIs make the most sense to use and productionalize 
* Changing requirements: In a business, change is a constant and the data infrastructure must evolve to support those changes. Help the Data team to be a partner in those changes, not an after thought

Stakeholders should also feel ownership of the data they use. They have a responsibility to help identify data issues as the occur.


## Next steps
Get out there and write your data warehouse SLA! Most importantly, when you write your SLA, don't file it away - publish it!