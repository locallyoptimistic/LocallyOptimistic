---
author: Scott Breitenother
title: "Should Your Data Warehouse Have an SLA? (Part 2)"
cover: "/img/data-warehouse-sla-p2.jpg"
publishDate: "TBD"
draft: true
tags: 
 - analytics
 - data warehouse
 - SLA
---

In my previous post I explored the concept of a data warehouse SLA as a tool to build a trusting stakeholder relationship. I also introduced a template to help you write your very own data warehouse SLA - a letter addressed to your stakeholder. In this post I walk through the meat of the SLA: services provided, expected performance, problem reporting, response time, monitoring processes, issue communication and stakeholder commitment. If you have not read [part one]({{< relref "data-warehouse-sla-p1.md" >}}), I highly recommend reading it first!

## Writing you SLA

### Services provided
At a 30,000 foot level you are providing data access. However, I recommend going as specific as possible when describing the data services provided. Greater specificity helps to align expectations on which fields are included and the definition of those fields (specificity also helps to frame future discussions when adding additional fields to the data warehouse). Field definition becomes increasingly important when the data is used to calculate individual performance and compensation.

The counter point is that you don't want to go overboard - you are not providing value to the business if you spend all your time working on a data dictionary. You should not expect to have a detailed data dictionary early in the life of your data warehouse. Find the right balance between specificity and the resources available to you.

Here are four examples of services provided with increasing specificity:
1. Business area: "The Data team promises to provide sales data"
2. Question: "The Data team promises to provide data to answer the following questions: What were sales yesterday?..."
3. KPIs over key dimensions: "The Data team promises to provide sales and conversion rate over time and by channel"
4. Detailed definitions: "The Data team promises to provide the data defined in our data dictionary, found on our intranet"


### Expected performance
Imagine you find a magic data genie and you ask for the most detailed sales data in the world. You start flipping through the data and everything looks AMAZING... until you realize the data is two years old. That wish could have used a detailed definition of expected performance. This is the area of the SLA where we move from "what" will be delivered to "how" it will be delivered.

Here are some common aspects of expected performance to include in your SLA:
* Data freshness: How current is the data? Is the data live, updated every hour or ready at 7am every morning? A potential approach is to categorize KPIs / models / data sources using "tiers of freshness" (e.g., intraday, daily, weekly) 
* Query speed: Query speed is a challenging aspect to quantify as your data warehouse most likely supports several different use cases in your data warehouse (types of data and queries). Average query run time is a good place to start, but you may need to create a more nuanced metric (e.g., X% of queries finish in <Y seconds)
* Data reliability / quality: Certainly you aspire to produce correct numbers, but it may not be possible to ensure perfection. I recommend tiering KPIs with descending levels of reliability - from your "bullet proof" metrics down to the numbers you put in the data warehouse for someone, but have not QA'd yet. I also recommend investing in the [Data Quality Flywheel]({{< relref "data-dies-in-darkness.md" >}})
* Ease of use / documentation: This can be a general commitment to deliver the data in a way that is simple and easy to use. However, you can also commit to producing detailed documentation (e.g., tool tips in the BI, data dictionary)

While you should strive to build a robust analytics stack, you may never achieve the same reliability as your company's production level systems. For example, it is reasonable to expect that the systems that run the website of an ecommerce company will be more robust than their data warehouse. It costs a lot more when the website is down than when the data in the data warehouse is a few hours staler than usual. You could certainly build a robust data warehouse with production system level reliability - it all comes down to whether it makes sense to do this given your limited resources.

The challenge, however, changes when you have [intelligent applications]({{< relref "data-platform.md" >}}) in production that utilize your data warehouse. In this case you must define and deliver on a significantly more robust SLA.

### Problem reporting
Despite our best efforts, something will go wrong and the Data team might not be the first to discover it. Clear problem reporting procedures eliminates confusion and ensures the right people know about this issue (avoid situations like "but I told Steve about the issue with X KPI last week"). This can be as simple as a Google form, a data warehouse issues email alias or a slack channel. When possible, try to avoid in person communication (or at least make sure you send an email or slack to memorialize the in person discussion) - this will be helpful if you need to write a post mortem.


### Response time
When stakeholders report issues, they deserve a response. At minimum you should acknowledge the issues and provide a rough idea of the response time. It is helpful to clarify a rough idea of the response times in your SLA. While you can develop 


As with any product, there are 


The most simple problem - stale data, always makes me think of this quote from the late comedian Mitch Hedberg:

>"Escalators don't break, they just temporarily become stairs. There should never be a sign that says 'Escalator Broken, Sorry for the Inconvenience'. It should say 'Escalator Temporarily Stairs, Sorry for the Convenience'"

The data warehouse version of the sign is "Data warehouse temporarily has data from January 1, 2015 through two days ago, sorry for the convenience"



### Monitoring process
How do you implement & enforce your SLA?

### Consequences
Lose respect / partnership




### Should you publish your SLA


## Next steps
