---
author: Michael Kaminsky
title: "What is Production?"
publishDate: 2018-10-14
cover: "/img/what_is_production.jpg"
tags: 
 - Software
 - Data Science
 - Engineering
 - Architecture
---

I have spoken to many fellow analytics practitioners who are adament that they want their team to *never* touch "production." While there are good reasons to be careful whenever you make changes that could impact customers, I believe that as software becomes more data-driven it is critical to find safe ways to empower Analytics teams to build and deploy data-driven applications.

<!--more-->


## What is Production?

First, some term definition. “Production” is an environment. Commonly there are a few environments where code may be run (in order of progression):

* Local development
* Remote development
* Staging / QA
* Production

Every “application” will have multiple environments, one of which will be the one facing non-developer users. The one facing non-developer users is typically called “production”. 

Here's my thesis: It's critical for Analytics teams to impact customer facing applications[^1]. If it is not possible to enable that in a safe way, then you should modify your customer facing application in such a way to make that possible.

If you found that last paragraph shocking, I am about to blow your socks off: all of your analysts are deploying to production every day, already. Let me walk you through my favorite[^2] line of questioning:

* The BI tool that you configure to provide reporting to users within your company — is that not production?
* The R script that assembled data, cleans it, and provides visualizations for a PPT that gets emailed to the exec team, is that not production?
* That Excel file (filled with code) that is used to make a multi-million dollar inventory decision, is that not production?

Remember: just because you don’t have a development environment does not mean that your user-facing environment is not production!

For a lot of startups, people use “production” as shorthand for referring to their user-facing web app (depending on company stage, it may or may not still be a rails monolith). Besides saying you should stop using such unclear terms, I want to advocate for thinking about  why you might want to enable non-engineers analysts and data scientists to deploy to a customer-facing application. I’ll finish up with some strategies for how you might operationalize this. 

## Why Empower the Analytics Team to Impact Customers?

Building data-driven applications is table-stakes for modern software engineering and product development. Tomorrow’s apps will have data integrated from stem to stern and if there is a wall between your data experts and your application developers you are going to have a bad time. 

Here are some examples of data-driven products you may want to build:

* Implement [Thompson sampling](https://support.google.com/analytics/answer/2844870?hl=en&ref_topic=1745207) for multi-armed bandit testing site variants
* Cluster customers for targeted marketing emails or landing page variants
* Predict customers likely to churn and give only those customers a coupon code
* Introduce product recommendation / search ranking algorithms

If you want to build these data-driven products, you are going to want your data experts working on them. Here are some reasons to think about blurring the line between your Analytics[^3] team and the rest of your software engineering team:

* Data scientists are your algorithm experts, and continuous integration is important 
* You want your app to be powered by data!!
* Analysts know the data best so they are less likely to make mistakes
* Productionizing someone else’s work is a shitty job
* Blocking analytics iteration with eng prioritization slows everyone down and leads to frustration

It’s non-controversial to let product managers or designers deploy new content to the site via a CMS. If that supported markdown, it should be trivial as well. You could also let analysts tweak algorithm weights via a CMS, so why not let them deploy a model as long as that model conforms to whatever API the app expects? Of course, because your Analytics team may not have all of the tools or skills for working on a complex web-application, you want to make sure that they can make these changes in a way that is both safe and effective (i.e., they can use the tools that they are familiar with and the other parts are abstracted away).

## How to Empower the Analytics Team to Impact Customers?

Now that we've discussed why this might be a good idea, we can talk about some ways to make this happen safely and effectively. Here are some examples that I have seen in the past (and I would love to hear about more if you know of any good patterns):

* Micro services
  * The product ranking algorithm can live behind an API so that the analytics team can deploy changes without touching the rest of the app
* User profiles
  * You can persist key user attributes in a table that your web app has access to (e.g., via a redis cache) that is managed by the analytics team (ETL, ML, whatever, as long as the API doesn’t change)
* Weights / Scores
  * If you have a model that works off of weights or attributes to create a “score” (e.g., a fraud risk score) then you can keep those weights in a table that the analytics team can have write access to

I've written about the [code-as-configuration]({{< relref "code-as-configuration.md" >}}) design pattern before, and in general this is a great pattern for empowering non-engineers to savely deploy code to production environments. Friend-of-the-blog Harlan Harris has also written about [using domain specific languages](http://proceedings.mlr.press/v82/harris18a/harris18a.pdf) to facilitate testing, coordinating, and deploying machine learning models in production.


[^1]: There are, of course, exceptions to this and different types of applications will have different "degrees" of data-driven-ness. Historically, some companies have hesitated to make their applications more data driven because their software engineers did not have the data skills and they were afraid to let the Analytics team impact the application. You should of course make decisions about adding new features based on how valuable they'll be, not simply because some blogger told you to.
[^2]: and most obnoxious. People love me at parties.
[^3]: As usual, in this post I use the term "Analytics" and "analysts" in the most broad way possible including data scientists, data analysts and other data experts.
