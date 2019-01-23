---
author: Michael Kaminsky
title: "The Analytics Engineer"
publishDate: "2019-01-31"
draft: True
tags: 
 - analytics
 - software
 - data
 - engineering
---

The landscape of the data and analytics world is shifting rapidly. In many companies, the roles and responsibilities  of data engineers, analysts, and data scientists are changing. This change has created the need for a new role on the data team which some have taken to calling the "analytics engineer". 

<!--more-->

The analytics engineer sits at the intersection of the skill sets of data scientists, analysts, and data engineers. They bring a formal and rigorous software engineering practice to the efforts of analysts and data scientists, and they bring an analytical and business-outcomes mindset to the efforts of data engineering. It's their job to build tools and infrastructure to support the efforts of the analytics and data team as a whole.

Before we dive further into the role, we should cover some background on the "traditional" roles on the data team[^1]. 

* Data engineers: traditionally, this has been a "plumbing" job of moving bytes from point A to point B. They were concerned with building robust and scalable infrastructure for ingesting and storing data, but generally did not concern themselves with "business logic" -- once the data were in the warehouse, it wasn't their problem any more.
* Analysts: traditionally, this has been a reporting and pure analysis job. Using a little SQL and a lot of excel, analysts would maintain dashboards and perform one-off strategic analyses to support key business initiatives.
* Data scientists: somewhat of a mixed bag, however data scientists traditionally spent their time using statistical programming languages (like R or SAS) to perform more complicated or sophisticated analyses. They would perhaps "prototype" machine learning models that get handed off to the "real engineers" for implementation in production.

In the last few years, we've seen a lot of exciting developments in the analytics domain that have caused a shift in these traditional responsibilities. They are:

* The rise of MPP SQL data-warehousing technologies like Redshift, BigQuery, and Snowflake
* The birth of data-pipelines-as-a-service companies like Stitch and Fivetran
* The advent of SQL-first BI tools like Looker, Mode, and Periscope
* The emphasis companies are putting on prediction and personalization

The first two, taken together, have shifted the role of analysts dramatically. Nowadays analysts _must_ know how to write SQL, use git/github, and generally spend a majority of their time _writing code_. While they aren't necessarily trained as software engineers, they are now responsible for managing substantial codebases. Similarly, while data engineers used to spend a lot of time split between building new data integrations between systems or working on platforms for scalable computation, most of that work can now be offloaded to Stitch/Fivetran (integrations) or to the warehouse itself (just let BigQuery figure out the optimal query plan). Finally, data scientists have suddenly become responsible for managing sophisticated production systems that are making real-time productions with significant business impact.

So what are the new roles and responsibilities?

* Data engineers: still responsible for data infrastructure and plumbing code, but the team is now generally much smaller than it was in the past. Many companies can get by just using contractors and consultants in the beginning, and they may only need one or two data engineers to "fill in the gaps" of what they can't purchase from off-the-shelf solutions
* Analysts: In addition to performing ad-hoc analyses, analysts are responsible for programming and managing BI tools and writing some ELT jobs (in Looker PDTs or via a tool like [dbt](https://www.getdbt.com/))
* Data scientists: In addition to doing one-off research tasks, data scientists are managing complex pipelines of data cleaning and orchestration feeding into machine learning models and sophisticated testing platforms.

Those who have worked in an organization like this before have likely felt the pinch of a missing role. While data scientists and analysts are writing a lot of code, being great software engineers isn't what they've been trained for and it often isn't their first priority. Similarly, while data engineers are great software engineers, they don't have training in how they data _are actually used_ and so can't always partner effectively with analysts and data scientists. 

I believe this gap should be filled in by analytics engineers. Their job is to:

* Write production-quality ELT code with an eye towards performance and maintainability
* Coach analysts and data scientists on software engineering best practices (e.g., building testing suites and CI pipelines)
* Build software tools that help data scientists and analysts work more efficiently (e.g., writing an internal R or Python tooling package for analysts to use)
* Collaborate with data engineers on infrastructure projects (where they advocate for and emphasize the business value of applications)

While they have a lot of strengths, analytics engineers can't (and shouldn't) do everything. Thought they may have exposure to analytic methodologies, they often aren't as strong at communicating results or winning over business partners. While analysts specialize in deriving insights and communicating those to a wider audience, analytics engineers often don't do that as well. Similarly, while a data scientist may have a graduate degree in mathematics and a deep understanding of statistical theory, an analytics engineer will generally favor working code over theoretical correctness (so know what you're getting into!). Finally, with such a blend of skills, analytics engineers generally aren't the _strongest_ software engineers you can find -- their value comes from their well-roundedness. So while you may expect your systems engineers to have a deep knowledge of both networking and CS algorithms, analytics engineers often have shallower and more applied knowledge (and will need support from more technical engineering partners on especially tough engineering challenges).

This role can provide a multiplier effect on the output of an analytics teams. By helping analysts and data scientists scale their efforts without getting bogged down in unmaintainable code, you can run much leaner. Similarly, with talented software engineers on the team, analytics teams don't get blocked waiting on resources from other parts of the technology organization. Finally, with these resources you have someone naturally ready to partner with the rest of the tech organization on building data-driven products (like adding a recommendation engine into a web platform) than if you just have data scientists and analysts who might be less familiar with the operational constraints of such a feature.

Some readers may be thinking that this role sounds like a real unicorn that will be impossible to hire. I don't believe that's true -- many teams have the people with the requisite skills and experience already on their teams today. Often this person looks like someone who was trained as an analyst or data scientist but who has elected to go deeper into software engineering. They're often the person showing new team-members how to set up git, who are volunteering for tasks with thorny technical issues and avoiding anything that requires working excel, or who are taking software engineering MOOCs in their spare time. There are a surprising number of these people out in the world today, but in the status-quo world they often go under-utilized and under-appreciated.

We as analytics leaders, by recognizing the importance of this skill set and the value of this role, can work to both cultivate and develop analytics engineers by 1) recognizing individuals who are positively inclined to this combination of responsibilities and 2) helping them find the right place in the organization where these skills can be fully leveraged, recognized, and appreciated.

I believe that recognizing the role and the title as an important job that is in fact distinct from the responsibilities of analyst/data-scientist/data-engineer is the first step. I would love to hear your thoughts and opinions on this role and how to make analytics teams works more effectively. Please [send me an email](mailto:kaminsky.michael@gmail.com) or [join our slack channel](https://www.locallyoptimistic.com/community/) to share.

[^1]: I realize I'm painting with a pretty broad brush here and these descriptions will not capture everyone's experience at every different company. This does however reflect a lot of what I've experienced and discussed with people across a wide range of companies and disciplines.
