---
title: "Strategies to Democratize Data"
author: "Matt David"
cover: ""
date: 2020-03-19T20:35:46-04:00
draft: true
tags:
 - Data Modeling
 - Data Democratization
 - Engineering
 - Architecture
---

Talk to any executive and they will tell you that they want their organization to be more data driven.
Ask how well they’re doing on this goal and you’ll find that most executives are disappointed with their progress so far.

Data might be ubiquitous and quite cheap to store and compute, but it is largely inaccessible to most of their employees.
Only a few people are trusted to work with it, present it, and make decisions from it.

What stands in companies' way to empower more employees with data? Two Barriers:

1. SQL - Data stored in a warehouse is typically in a highly normalized format and can only be accessed using SQL.
2. Business Logic - Most metrics can be calculated in different ways.
Additionally, due to how data has been collected, there may be special quirks to actually get the “right” answer.

There are three main philosophies to modeling your data to overcome these barriers to allow more people in the organization to work with data. All three require that the core team of people who understand how to query the data accurately break these barriers down. The philosophies are:

* Fixed Data Model
* Expanding Data Model
* Empowering Data Model

## Fixed Data Model
The core team defines all of the business logic such that the end user cannot make a mistake
with the data once they have access to one of their dashboards or premade data sets.
They accomplish this by extracting and modeling data into interactive dashboards and
pre-made datasets to be analyzed and explored by business users through a drag and drop BI tool.

### Considerations
Business users are restricted in the type of questions they can ask.
They are limited to what is in the dashboard or data set they were given.
This can prevent insights being made by the people with the most context to a business problem.
New or different questions will require new modeling.
This means that this approach has the potential to create excessive turnaround times before a
decision can be made from the data since the core team must first add this data to the Fixed data Model.

The problem of restrictions are also exacerbated by the normal flow of a company because the metrics that matter can change as business goals change. This also occurs when the company switches a SaaS tool that is providing them information or changes a field in their database. The need to have the core team update the model each time a change like this occurs becomes very expensive in engineering time.

## Expanding Data Model
The core team works with business users who are able to get over the SQL barrier and grant them
schema level data access to help expand the data model.
This growing core team can help model more data and create more data sets and dashboards
for others who are not able to get over the SQL barrier. This also frees up the original core team to
tackle higher value problems in the data.

### Considerations
With more people performing data modeling, it can be harder to coordinate and define metrics for the rest of the company to use. This typically requires more meetings, documentation (data dictionary, known data bugs) and training (how to apply business logic, how to calculate metrics). While it can take a significant effort (time and money) to educate business users, this process can help create a data-literate workforce that can work with the data on multiple levels. It also begins to create an open dialogue around the organization’s data.

## Empowering Data Model
The core team does an initial clean up of the data to make fields and values more understandable.
They leave the building of metrics, dashboards, and data sets up to the business user.
This approach can radically increase the amount of insights that are found.

### Considerations
In the Empowering Data Model, errors are inevitable and more errors will surface as the company scales.
These errors are a chance to learn and improve the model and the business users understanding of the data.
Not all companies can have potentially incorrect analysis being reported, so approach with caution.
The best practice is to create common metrics in a dashboard, wiki, snippet, or view but not to
restrict other business users to only using these definitions. Allow business users to deviate when their
analysis demands new ways of looking into the data.

Another common strategy that gets employed with the Empowering Data Model is to have regular audit
meetings to review the quality of data, charts, and dashboards. This helps surface conflicting views on
metrics, bugs in the data, and permissions.

The first pass of cleaning is extremely important to handle PII and rename fields in a way that they
will be accessible to business users. This approach also needs people to share how they were able to
work with different data sets since it is not obvious to business users what data they may need to
filter out to get accurate results.

## Summary
The tradeoff between all of these approaches weighs errors in data handling and analysis against availability for data curiosity and potential insights.

* If your company cannot have a single error in an analysis, you should pursue a Fixed Data Model.
This comes at the cost of much data exploration by those outside of the core data team.
* If your company can trade having a small amount of errors in an analysis for more insights
found by more people then pursue the Expanding Data Model. Bringing other data-literate business
users in to more of the data reduces the bottleneck but it still limits all users from fully exploring the data.
* If your company can trade having errors in an analysis for maximum insights then pursue a
Empowering Data Model. While there will be errors, the upside is much higher to learn new things about your business.

Most companies start out defaulting to a Fixed Data Model approach due to costs and how
access to the database is set up. However, at smaller sizes having a more Empowering Data Model
approach is much more valuable since the upsides can be much larger than the down sides.
As companies and the data they rely on becomes more critical a Fixed Data Model or
Expanding Data Model approach is more attractive due to the guarantee behind the data.
