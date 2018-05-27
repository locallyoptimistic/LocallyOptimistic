---
author: Scott Breitenother
title: "Should Your Data Warehouse Have an SLA? (Part 1)"
cover: "/img/data-warehouse-sla-p1.jpg"
publishDate: "2018-05-28"
draft: true
tags: 
 - analytics
 - data warehouse
 - SLA
---

Yes, if you want to build a truly data-driven organization your data warehouse needs a Service Level Agreement (SLA). At the core of any data driven organization is trust - your stakeholders must trust that when they need data, it will be there and it will be accurate. Without trust in the data warehouse, your organization will be less likely to use data to drive decisions big and small.

In my previous post [Reporting is a Gateway Drug]({{< relref "reporting-is-a-gateway-drug.md" >}}) I explored reporting as a tool to build a trusting stakeholder relationship. In this post I explore trust through the concept of a data warehouse SLA. In part two I explore the people, process and tools you need to successfully implement the SLA.
<!--more-->

Note: for the purposes of this post, I use the term data warehouse to refer to the data warehouse and the tools stakeholders use to access data from the data warehouse (e.g., business intelligence tools).

Also, quick shout out to [Rebecca Green](https://www.linkedin.com/in/rebecca-greene-31b98513/) and [Dylan Sather](https://www.linkedin.com/in/dylansather/) for sharing great examples of real world data warehouse SLAs.

## What is an SLA?
SLA is a term used in many different business contexts. You have SLAs between companies (e.g., AWS's 99.999% uptime), between departments (e.g., a Manufacturing team's product quality target) and between companies and their customers (e.g., pizza delivery in 30 minutes or less). You may even have internal and external SLAs for the same metric (e.g., we promise our customers delivery in a week, but internally we aim for 4 days).

The underlying theme in all these SLAs is an attempt to define expectations for a relationship between two parties. I think this definition from [Wikipedia](https://en.wikipedia.org/wiki/Service-level_agreement) does a great job at explaining the core components of an SLA:

 >"A service-level agreement (SLA) is a commitment between a service provider and a client. Particular aspects of the service – quality, availability, responsibilities – are agreed between the service provider and the service user"

The word that jumps out to me right away is "commitment", or as I like to think of it, a "promise." An SLA is a promise to your stakeholders that you will deliver quality, predictable service that they can rely on it. It is also a promise to communicate when your service level is compromised.

## Why does a data warehouse need an SLA?
In short, you need an SLA to build trust. You may have picked up a theme in my posts - I believe, in the field of Analytics, the stakeholder relationship is critical. Data warehouses are often operated by centralized shared service teams. This means the team that produces and maintains the data does not report to the teams that use the data to operate their areas of the business. Even for the most enlightened business leaders, it is challenging to accept that something so critical to your area of the business (the data warehouse), is operated by another team.

In some ways, Analytics teams partially have themselves to blame - we have done such a great job espousing the benefits of data, but then we say you have to go through us to get it. As a result, the stakeholder relationship with the data warehouse is like a trust fall - the stakeholder needs to know the data will be there when they need it. If your data warehouse SLA is a promise, your consistent delivery on that promise will build tremendous amounts of trust.

While the data warehouse SLA should articulate your commitment to deliver exemplary data services, it should also include commitments from the stakeholder side. After all, all good relationships require both parties to participate. The stakeholder-Analytics relationship requires commitment and collaboration from both sides.

## Writing you SLA

### The template
The goal of writing an SLA to your internal stakeholders is not to create a detailed legal document that covers every possible situation. Instead, your SLA with your stakeholders is designed to get everyone on the same page. Issues with stakeholders are often a result of misalignment of expectations. In the spirit of formalizing the promise we are making to our stakeholders, with whom we already have a collaborative, friendly relationship, let's write... a letter. 

Here is an SLA letter template partly inspired by the elements of an SLA described by Dinesh Verma in [Service Level Agreements on IP Networks](https://pdfs.semanticscholar.org/b526/8efaeac72624220bcdefa40cd44bf59aff90.pdf). Let's review the template here and then I will explore each section in more detail below and in part 2 of this post:

>Dear **[stakeholder]**,
>
>One of the core goals of the Data team is to empower you to make data driven decisions, both big and small. We are excited to see you using the data warehouse and business intelligence tool to run your area of the business, and we realize the exceptional amount of trust you have placed on us to be custodians of that data. As such, we would like to formalize our commitment to you. 
>
>The Data team promises to deliver **[services provided]** at **[expected performance]**. If there are any issues you can **[problem reporting]** and we promise to resolve the problem in **[response time]**. However, we have also established internal **[monitoring processes]** so that if there is an issue, we aim to find it first and **[issue communication]**.
>
>To help us continue to deliver these services, we ask for your **[stakeholder commitment]**.
>
>Sincerely,
>
>The Data team


### Stakeholder
The first, and most important, element of the SLA is identifying stakeholder - who are you writing the letter to? You may have many stakeholders, each with different capabilities and use cases, which means different SLA requirements. Most of your stakeholder requirements will be slight variations (e.g., the same promise with different KPIs).

However, you may also have non-business area stakeholders with very specific requirements. For example, your Security & Compliance team may have concerns about PCI, PII and GDPR compliance. Alternatively, your CEO may prioritize consistent, neutral use of metrics across the business. For these stakeholders you will need a very different SLA, one that takes precedence over your other stakeholder SLAs.

## Part 2
Hopefully I have convinced you of the importance of a data warehouse SLA and you are sitting at the edge of your seat waiting for part two!. In my follow up post, I will explore the data warehouse SLA from the most common perspective, that of a business stakeholder. I will review the remaining elements of our SLA template: services provided, expected performance, problem reporting, response time, monitoring processes, issue communication and stakeholder commitment.
