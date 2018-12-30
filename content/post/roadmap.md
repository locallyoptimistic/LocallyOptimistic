---
title: "Creating a Data road map"
author: "Ilan Man"
cover: "/img/cover.jpg"
tags: ["strategy", "management"]
date: 2018-12-22T13:19:40-05:00
draft: true
---

As the new year rolls around, many Data leaders are thinking about (or have already created) 2019 road maps for their team and function. Since Data often works cross functionally with other teams, it's key that you consider other team's priorities and objectives in developing your road map. Below is a blueprint you can use to get started.

<!--more-->

Your road map is a tool to:
<li> Force you to make explicit what your team will be working on, e.g., "Improve existing data infrastructure" is not specific enough or helpful. "Implement a [star schema](https://en.wikipedia.org/wiki/Star_schema) and transformation layer" is better.
<li> Communicate your team's priorities to leaders across the organization, e.g., When your team is focused on data infrastructure for all of Q1, stakeholders may be left unsatisfied. It's helpful to identify how each of the various Data infrastructure projects (i.e., adding testing and error alerting, data re-model, implement [DAG](https://airflow.apache.org/concepts.html#dags)) will ultimately support stakeholder initiatives slated for Q2 and beyond.
<li> Clarify (and hopefully excite) your team for the year ahead. The road map is an opportunity to be ambitious and set up your team to think about what their year can conceivably look like.
<li> Help defend head count for future hiring needs and also focus your hiring search, e.g., When Finance asks you why you need 7 more head count through Q3, a road map will allow you to identify what the break down is (junior vs. senior, analyst vs. data scientist) and to what projects they would be assigned. 
 
### Identifying the audience for the road map

Ideally everyone in the organization has access to this road map. My preferred medium for communicating my road map is a slide-deck with an in-person presentation. I can inject visuals if needed, color code where appropriate and organically keep it to one topic per slide to help navigate.

While everyone should have access, you don't need to make it digestible to everyone in the organization. You key audience should be leadership, relevant cross-functional partners and your team. That will help guide the level of detail required. I like to present my road map to stakeholders; this allows me to describe individual projects at high level in the document whilst allowing me to detail them in the presentation if necessary.

### Relate to the organization’s mission and values

As a data team, it's incumbent upon us to ensure that decisions are tied to organizational objectives. This is part of thinking holistically about your business. In that vein, you should strive to tie each of your high level strategic goals to the organization's mission and/or objectives. It's a helpful exercise to tie each project, however indirectly, to the company's strategic objectives, even if you don't end up documenting that in the final road map. 

You may end up tying your work back to, say, 2 of your organization's 3 strategic goals for the year. That's not in and of itself bad, but should be called out. This exercise reduces blind spots and forces you to think about how you can support all aspects of the mission.

### Set up the scaffolding

How do you start? After outlining our Data team mission and values (distinct from the broader company) I like to make explicit what areas of focus we're responsible for. For us, that's Data infrastructure, BI, analytics and strategic projects, Data Science and Clinical Data products. This helps to compartmentalize projects, especially those that are cross functional.

You may find it more natural to split your road map by the various teams you support, e.g., Marketing, Product, Sales, etc... I prefer the former because it captures both technical differences that are relevant to the team (e.g., data analysts will skew heavily towards BI, data engineers towards data infrastructure, etc...) and "Analytics and Strategic projects" encapsulate projects that are cross functional (e.g., Marketing, Sales, Finance).

### Sync with functional leaders 

After putting down some projects that fit into the relevant areas of focus, set up time with key functional leaders and get their input. Hopefully you sequence this exercise at a time in which they are also thinking about their goals for the year. Have them help you fill in blind spots and loosely prioritize their projects. You may know of four Operations projects that are critical for 2019, but the COO may have a different idea on what the sequencing should be. Don't get bogged down by timing at this point, but getting a rank-ordered list of projects - at least within each functional stakeholder - is very helpful. For example, it may be too early to understand if Finance's pricing model should be prioritized over the Customer Support team's call queue algorithm, but its helpful to identify if automating Finance's monthly billing report is more important than their pricing model. A more rigorous example of this would be holding a [Prioritization meeting]({{< ref "prioritization_meeting.md" >}})  with all stakeholders.

Functional leaders will also be helpful in identifying cross team dependencies. You may have grand plans for implementing [Airflow](https://airflow.apache.org/), but if you lack Data Engineering resources, you may have to rethink your plan. Similarly you may have an idea for a great data-driven product feature, but if Product isn't prioritizing that in their roadmap, it may drop to the bottom of your priority, even though you think it's a valuable feature.

### Put stakes in the ground 

Once you're confident that you have covered the most important projects for the year, write down estimated timing for completion and key stakeholders impacted. For example, under "Analytics" you may have the bullet `Establish a multi-touch attribution model // Q2 // Marketing`.

After you do this across the board, you'll have a good sense of:
<Li> How projects are being sequenced
<li> If you're front-loading projects, e.g., too many in Q1/Q2
<li> Which departments aren't being supported or are being overly represented. 

This functions as another sense check for how you're orienting your year and helps to communicate and set expectations across the organization. 

Note that its natural for more projects to be slated for Q1/Q2 as there is more variability later on in the year and it's hard to organize around that uncertainty. Similarly, projects that will be worked on earlier in the year should be easier to explain, plan for and resource whereas those towards to end may be more vague. That shouldn't be an excuse not to plan for them anyway.
 
### Make it public

Once you're satisfied and have discussed with the relevant stakeholders, share it with everyone. Don't spend too much time perfecting this document as it will be iterated upon, edited and updated throughout the year. You should treat it as a living document. It'll be the basis for quarterly planning and referred to by other teams throughout the year at key inflection points. It'll also be a good place to identify projects that should be pushed to the following year.

### Conclusion

Creating a road map should be a fun exercise! It forces you to identify what you'll work on, in what order, and why it's important. It's also a great opportunity to write down a bunch of ambitious projects, get your team and company excited and relate the importance of your team's projects to the company's overall mission.


