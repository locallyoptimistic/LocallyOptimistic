---
author: Scott Breitenother
title: "Should Your Data Warehouse Have an SLA?"
cover: "/img/data-warehouse-sla.jpg"
publishDate: "2018-05-27"
draft: true
tags: 
 - analytics
 - data warehouse
 - SLA
---

Yes, if you want to build a truly data-driven organization your data warehouse needs an SLA. At the core of any data driven organization is trust - your stakeholders must trust that when they need data, it will be there and it will be accurate. Without trust in the data warehouse, your organization will be less likely to use data to drive decisions big and small.

In my previous post [Reporting is a Gateway Drug](https://www.locallyoptimistic.com/post/reporting-is-a-gateway-drug/) I explored reporting as a tool to build a trusting stakeholder relationship. In this post I explore trust through the concept of a data warehouse SLA and the people, process and tools you need to successfully implement the SLA.
<!--more-->

Note: for the purposes of this post, I use the term data warehouse to refer to the data warehouse and the tools stakeholders use to access data from the data warehouse (e.g., business intelligence tools).

Also, quick shout out to [Rebecca Green](https://www.linkedin.com/in/rebecca-greene-31b98513/) and [Dylan Sather](https://www.linkedin.com/in/dylansather/) for sharing great examples of real world data warehouse SLAs.

## What is an SLA?
Sevice level agreement (SLA) is a term used in many different business contexts. You have SLAs between companies (e.g., AWS's 99.999% uptime), between departments (e.g., a Manufacturing team's product quality target) and between companies and their customers (e.g., pizza delivery in 30 minutes or less). You may even have internal and external SLAs for the same metric (e.g., we promise our customers delivery in a week, but internally we aim for 4 days).

The underlying theme in all these SLAs is an attempt to define expectations for a relationship between two parties. I think this definition from [Wikipedia](https://en.wikipedia.org/wiki/Service-level_agreement) does a great job at explaining the core components of an SLA:

 >"A service-level agreement (SLA) is a commitment between a service provider and a client. Particular aspects of the service – quality, availability, responsibilities – are agreed between the service provider and the service user"

The word that jumps out to me right away is "commitment", or as I like to think of it, a "promise." An SLA is a promise to your stakeholders that you will deliver quality, predictable service that they can rely on it. It is also a promise to communicate when your service level is compromised.

## Why does a data warehouse need an SLA?
In short, you need an SLA to build trust. You may have picked up a theme in my posts - I believe, in the field of Analytics, the stakeholder relationship is critical. Data warehouses are often operated by centralized shared service teams. This means the team that produces and maintains the data does not report to the teams that use the data to operate their areas of the business. Even for the most enlightened business leaders, it is challenging to accept that something so critical to your area of the business (the data warehouse), is operated by another team.

In some ways, Analytics teams partially have themselves to blame - we have done such a great job espousing the benefits of data, but then we say you have to go through us to get it. As a result, the stakeholder relationship with the data warehouse is like a trust fall - the stakeholder needs to know the data will be there when they need it. If your data warehouse SLA is a promise, your consistent delivery on that promise will build tremendous amounts of trust.

## Writing you SLA

### The template
The goal of writing an SLA to your internal stakeholders is not to create a detailed legal document that covers every possible situation. Instead, your SLA with your stakeholders is designed to get everyone on the same page. Issues with stakeholders are often a result of misalignment of expectations. In the spirit of formalizing the promise we are making to our stakeholders, with whom we already have a collaborative, friendly relationship, let's write... a letter. 

Here is an SLA letter template partly inspired by the elements of an SLA described by Dinesh Verma in [Service Level Agreements on IP Networks](https://pdfs.semanticscholar.org/b526/8efaeac72624220bcdefa40cd44bf59aff90.pdf). Let's review the template here and then I will explore each section in more detail below:

>Dear [stakeholder],
>
>One of the core goals of the Data team is to empower you to make data driven decisions, both big and small. We are excited to see you using the data warehouse and business intelligence tool to run your area of the business, and we realize the exceptional amount of trust you have placed on us to be custodians of that data. As such, we would like to formalize our commitment to you. 
>
>The Data team promises to deliver **[services provided]** at **[expected performance level]**. If there are any issues you can **[problem reporting]** and we promise to resolve the problem in **[response time]**. However, we established have also established internal **[monitoring processes]** so that if there is an issue, we aim to find it first and **[issue communication]**.
>
>Sincerely,
>
>The Data team


### Stakeholder
The first, and most important, element of the SLA is identifying stakeholder - who are you writing the letter to? You may have many stakeholders, each with different capabilities and use cases, which means different SLA requirements. Most of your stakeholder requirements will be slight variations (e.g., the same promise with different KPIs).

However, you may also have non-business area stakeholders with very specific requirements. For example, your Security & Compliance team may have concerns about PCI, PII and GDPR compliance. Alternatively, your CEO may prioritize consistent, neutral use of metrics across the business. For these stakeholders you will need a very different SLA, one that takes precedence over your other stakeholder SLAs.

In this post I explore a data warehouse SLA from the most common perspective, that of a business stakeholder.

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
* Data freshness: How current is the data? Is the data live, updated every hour or ready at 7am every morning?
* Query speed: Query speed is a challenging aspect to quantify as your data warehouse most likely supports several different use cases in your data warehouse (types of data and queries). Average query run time is a good place to start, but you may need to create a more nuanced metric (e.g., X% of queries finish in <Y seconds)
* Data reliability / quality: Certainly you aspire to produce correct numbers, but it may not be possible to ensure perfection. I recommend tiering KPIs with descending levels of reliability - from your "bullet proof" metrics down to the numbers you put in the data warehouse for someone, but have not QA'd yet. I also recommend investing in the [Data Quality Flywheel](https://www.locallyoptimistic.com/post/data-dies-in-darkness/)
* Ease of use / documentation: 

While you should strive to build a robust analytics stack, you may never achieve the same reliability as your company's production level systems. For example, it is reasonable to expect that the systems that run the website of an ecommerce company will be more robust than their data warehouse. It costs a lot more when the website is down than when the data in the data warehouse is a few hours staler than usual. You could certainly build a robust data warehouse with production system level reliability - it all comes down to whether it makes sense to do this given your limited resources.

The challenge, however, changes when you have [intelligent applications](https://www.locallyoptimistic.com/post/data-platform/) in production that utilize your data warehouse. In this case you must define and deliver on a significantly more robust SLA.

### Problem reporting
* Notification of errors


### Response time
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
