---
author: Scott Breitenother
title: "Not everyone needs to know SQL"
cover: "/img/not_everone_needs_sql.jpg"
publishDate: "2018-08-05"
draft: true
tags: 
 - SQL
 - org
 - team
 - BI
---

The most first wave of analytics powered by cloud-based infrastructure (e.g., Redshift) was about bringing users closer to the data. The current wave is about moving users closer to the value. It is easy to conflate data and the value of the decisions and actions that can be made from that data, but our experience demonstrates they are very different. In this post I explore those differences, the decline of the stakeholder-facing data warehouse and the role of machine-to-human (m2h) and machine-to-machine (m2m) data products in the current wave of Analytics.


## Data != value

When Amazon Redshift came on the scene in 2012 it greatly lowered the barriers to entry to build analytics infrastructure. Data-driven pre-Redshift startups invested time and money to build cutting edge stacks featuring technologies such as Vertica, Aster and Hadoop. Post-Redshift startups, on the other hand, had a great advantage due to their access to low-cost, scalable cloud data infrastructure as a service. And with that, everyone had a data warehouse.

The philosophy at that time was data = value. In this world, the logical goal was to to bring as many people in the organization as close to the data as possible. The logical way to do that was to create a stakeholder-facing data warehouse and teach everyone SQL.

The benefit of ubiquitous SQL skills was obvious - data at your finger tips. No more waiting for another team to build a report or pull a CSV. You need the data, you go straight to the data warehouse and get the data. In this world, everyone in the company is a super-powered Analyst.

Unfortunately, we discovered reality is a bit different -  an untrained or inexperienced SQL user is a lot like a sixteen year old behind the wheel of a car. The only difference is that instead of car accidents, you have data accidents: data that doesn't mean what you think it means, leading to bad decisions. Even experienced experienced Analysts make mistakes, which is the reason peer review and testing become incredibly important. Unfortunately, we learned the closer anyone is to the data, the more likely they are to make a mistake.


## Preventing data accidents

To be fair, there were several methods to mitigate the challenges associated with everyone in an organization having direct data access. With some success, Data teams invested in education and enablement. They trained business stakeholders and created beautiful, well documented stakeholder-facing tables that could be accessed with Excel or a SQL client. SQL / database training helped stakeholders to understand and become excited about the data available to them, but data accidents were unavoidable.

Fast forward to today and times have changed. The data products (e.g., BI tools, CDPs, and in-house ML applications) available to organizations are better than every before and it is time for the stakeholder-facing data warehouse, once a critical asset to the organization, to go the way of the laptop CD drive.

To be clear, I am not speaking from a position of self-preservation. I don't want everyone to need the Data team to access data. After all, Data teams may [start with reporting]({{< relref "reporting-is-a-gateway-drug.md" >}}), but they aspire to answer more complex questions and provide insight. What I am proposing is that Data teams stop building for access to data and start building for access to value.


## Data products that unlock value

There are two broad areas where the value of data can be unlocked: machine-to-human (m2h) and machine-to-machine (m2m) data products. In m2h use cases (most common), where humans make decisions based on information and recommendation from data products, the goal is to continue moving the human away from the raw data and closer to the decision that needs to be made. The ultimate goal is to move humans so far away from the data that they are out of the loop entirely, creating a m2m application.


### Empower humans to make decisions (m2h)

The bulk of data products still require a human to take action. For example, a business intelligence tool still requires a person to look at the 

Business intelligence (BI) tool: Modern 

Customer data platform (CDP)


### Now remove the humans entirely (m2m)




It is 2018 and the tools in the market are good enough that everyone CAN access the data they need without the downsides of SQL. I propose that data teams focus on surfacing data through business intelligence tools and actioning on it through [intelligent applications]({{< relref "data-platforms.md" >}})










## The solution

On approach to solving this problem is to construct stakeholder-friendly tables and educate your stakeholders on the theory and the environment. This is a commitment


The other approach, which I advocate for, is to funnel your resources into building or implementing tools and platforms to sit between your stakeholders and the data. In an organization with finite resources you are better off building stakeholder-facing data products (e.g, BI tools, recommendation engines) than stakeholder-facing data warehouses.

To surface data to your 


While I framed the two alternatives as mutually exclusing, they can actually be done simultaneously. In larger organizations you may have a wide spectrum of technical data users, many of whom are fairly far away from the team that manages the data warehouse and data infrastructure. These technical users benefit from a well documented, stakeholder facing data warehouse, especially if there are many separate data warehouses. In these cases it mat not be a black and white decision who should have sql access. In these cases I recommend a philosphy of encouraging users, where possible, to use tools to access data rather than SQL access.

Even in smaller organizations, basic sql training for stakeholders helps them to understand the data that is available to them and formulate better questions.



Complete environment expertise is actually not achievable (in an individual)


