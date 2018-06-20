---
title: "Prioritizing Prioritization"
author: "Ilan Man"
cover: "/img/cover.jpg"
tags: ["agile"]
date: 2018-06-15T17:27:09-04:00
draft: true
---

The sprint prioritization meeting is an integral aspect of agile philosophy. You may be more familiar with concepts like stand up, sprint planning, back log grooming and retros, but the prioritization meeting often garners less attention I suspect, partially because it is a difficult process to deploy. It involves regularly occurring meetings, thoughtful ticket (or story) descriptions, considerations of each ticket vis-a-vis every other ticket, and to top it off, this all needs to be coordinated among various Data stakeholders. There is a reason why scrum masters are typically referred to as [cat herders](https://www.google.com/search?ei=GVYpW66lCdHX5gLDsbegDg&q=%22scrum+master%22+%26+%22cat+herder%22&oq=%22scrum+master%22+%26+%22cat+herder%22&gs_l=psy-ab.3..33i160k1.5030.9792.0.10255.6.6.0.0.0.0.139.663.1j5.6.0....0...1c.1.64.psy-ab..0.1.139....0.M519ryGOesY).

<!--more-->

Despite those hurdles, I have come to believe that the end of sprint prioritization meeting is, save for sprint planning, the most crucial project management element of a successful sprint. In this post I will discuss some of the benefit of this meeting, including:

<li>Helping to set stakeholder expectations
<li>Increasing transparency into Data team priorities
<li>Improving ticket/story quality
<li>Visibility into what analysts do

Hopefully by the end you will consider implementing a sprint prioritization meeting for your team.

### Sprint prioritization basics

The key focus areas of our scrum process are: sprint planning, daily stand ups, backlog grooming, end of sprint retro and sprint prioritization. The hour-long prioritization meeting occurs at the end of each bi-weekly sprint, is facilitated by either a scrum master or Data lead, and includes representatives of each function that Data supports. That is, if a function in the organization has work that they would like the Data team to work on in the upcoming sprint, that function would send a representative to the
meeting. Others are welcome to sit in or dial in, but at minimum some stakeholder representation is required.

The purpose of the meeting is essentially for stakeholders to work with Data to come up with a rank-ordered list of tickets for consideration in Data's next sprint. The entire group must come to a consensus around which ticket should be ranked first, second, etc... The meeting facilitator literally moves tickets up and down the board and the group decides (debates?) where a ticket should land. This way the Data team's workload is aligned with the organizations priorities without Data having to chase down stakeholders and decide what is the most important initiative this sprint. If Marketing and Product disagree on what is most important, the entire room together can weigh in with the end result being one ticket is ranked above the other. Data should opine on the technical feasibility or difficulty of executing certain tasks but in general should be unbiased participants. Data should act as tie breakers, not king makers. When prioritization works well, it is a thing of beauty for some of the following reasons.

### Setting stakeholder expectations

Representatives of each function that attend the meeting get insight into what the Data team is working on. As a result stakeholders are less likely to be confused as to why their work is not being prioritized. This reduces possible resentment or the potential for slacking analysts with extraneous requests. The prioritization meeting establishes a two-way communication between Data and the rest of the organization. The final queue is an acknowledgement that if Data doesn't include a ticket in the sprint, the onus is on us to explain why. Transparency keeps us accountable.

### Workload transparency

If Marketing concedes that Product's A/B test analysis is the most important thing Data can work on this sprint, then when they ask why we don't have time to work on their attribution model and we point to the A/B test, the conversation is much easier since there is a built in understanding. Better yet, Marketing can look on our board (assuming project management is visible to the organization) and see what we are working on. This transparency means less chance for misunderstanding around Data team priorities.

### Better quality tickets

Each function must persuade every other function that their ticket is most important or at least more important than another team's. This organically biases each request to be well thought out and clearly depicted because when CustOps needs to convince a room full of non-CustOps folks that their Zendesk integration should be prioritized, it is in their best interest to have more than a one line ticket description. Usually the more well formulated the ticket and the better it aligns with organizational priorities, the more likely it will get prioritized. This nudges Data team tickets to be more valuable and easier to understand, minimizing (but not eliminating of course) the potential for back and forth later in the sprint. As a bonus the onus of figuring out if a request is valuable or not is no longer on the Data team, easing some pressure from the sprint planning meeting.

### Appreciation for the Data Team

When stakeholders attend the prioritization meeting for the first time they get an eye opening glimpse into what the Data team does. Marketing may not have considered Analysts need to think about the data warehouse infrastructure as well as statistical assumptions involved in an A/B test as well as considering the value of Brand vs. Direct marketing. And of course, Data usually has to help Finance with all kinds of work. Because Data cuts horizontally across an organization, the breadth of work that falls in Data's scope can be surprising for stakeholders who are used to focusing on a slice of the organization.

### It gets more efficient

While the idea of adding yet another meeting to everyone's already busy schedule is the last thing anyone wants, in reality after a few iterations, with a competent meeting facilitator, it often runs very quickly. For example it is common for our prioritization meetings to run in under 30 minutes. The more exposure teams have with each other, the easier it is to understand how to efficiently prioritize requests. Stakeholders are incentivized to pick their battles. And in practice since the top few requests are likely to be worked on, those tickets that fall beneath the "will probably work on" threshold are for the most part
lower priority anyway, and hence subject to less vigorous debate.

### No promises

Finally the beauty of the meeting is no promises are made except that the Data team will consider working on the requests in the order specified in the prioritization meeting. During sprint planning it may be decided that certain tickets are ill-defined, or are technically infeasible, or internal Data team work is prioritized above the business' requests or due to resource constraints not all prioritized tickets will be worked on. This allows for flexibility for the Data team to not be
completely beholden to the business. The prioritization meeting therefore is not destiny, but instead a guide ensuring that Data's work is aligned with the organization's. 

### Does it scale?

In my experience prioritization meeting works well when there are fewer than 8 active stakeholders in the room. Of course your mileage may vary. Data is there to help facilitate the conversation and chime in with technical thoughts on implementation, potentially opining on how difficult or simple a stakeholder task is. But what happens when an organization has 100's of Data stakeholders? In my estimation nothing changes except the scope of the meeting. You can have a Marketing<>Data prioritization meeting, a Product<>Data prioritization meeting, and so on. And perhaps there is a higher level prioritization meeting with the heads of each function. This meeting would occur with less frequency, say monthly, instead of each sprint. But the process and benefits remain the same. This meeting scales. 

### Now, prioritize!

Agile [doesn't necessarily make sense]({{< ref "agile-analytics-p2.md" >}}) for every Data team, and each team should be free to amend Agile philosophy to fit their needs. Having said that, through setting expectations, aligning the team's work with organizational objectives, and helping to ensure high quality stakeholder requests, all while allowing flexibility for internal projects, the sprint prioritization meeting is a valuable tool in almost any Data team's project and team management repertoire.


