---
title: "Prioritizing Prioritization"
author: "Ilan Man"
cover: "/img/cover.jpg"
tags: ["agile", "prioritization", "project management"]
date: 2018-07-22
draft: true
---

The sprint prioritization meeting is integral to the agile process. While many people may be more familiar with meetings such as sprint planning, stand up, back log grooming and retro, the sprint prioritization meeting often receives less attention. I suspect this is because it is a particularly difficult process to deploy successfully. A good prioritization process requires thoughtful ticket descriptions written in advance, a collaborative review of each ticket in the context of all of the other tickets, and the buy-in and coordination of all of the analytics stakeholders. And this process occurs at the end of each sprint, in advance of the following sprint planning.

There is a reason why scrum masters are typically referred to as [cat herders](https://www.google.com/search?ei=GVYpW66lCdHX5gLDsbegDg&q=%22scrum+master%22+%26+%22cat+herder%22&oq=%22scrum+master%22+%26+%22cat+herder%22&gs_l=psy-ab.3..33i160k1.5030.9792.0.10255.6.6.0.0.0.0.139.663.1j5.6.0....0...1c.1.64.psy-ab..0.1.139....0.M519ryGOesY).

<!--more-->

Despite those hurdles, I believe that the end of sprint prioritization meeting is, save for sprint planning, the most crucial [project management element] (https://www.scrum.org/resources/what-is-scrum) of a successful sprint. In this post I will discuss some of the benefits of this meeting, including:

<li>Helping to set stakeholder expectations
<li>Increasing transparency into Data team priorities
<li>Improving ticket/story quality
<li>Visibility into what analysts do

Each of the meetings in scrum serves a specific purpose. Prioritization plays the key role in ensuring that the tickets that the Data team works on are rank-ordered in the most optimal way for the organization in a transparent fashion. Hopefully by the end you will consider implementing a sprint prioritization meeting for your team.

### Word of caution

There may be a tendency to fall into the trap of creating an efficient ticket-prioritization machine to the detriment of Data's own long term objectives. That misses the spirit of prioritization. The goal of this meeting is not to efficiently cross off a checklist of items, but instead to align with the organization's key objectives in order to deliver as much value as possible. This should be done in conjunction with, not lieu of, the Data team's own goals and vision for success (after all Data's goals should support the organization's at some level). While there may exist a tension between the organization's goals and Data's goals from a resource allocation perspective, the prioritization meeting is flexible enough to be able to handle both sets of competing interests (more on this below).

### Sprint prioritization basics

The hour-long prioritization meeting occurs at the end of each bi-weekly sprint, is facilitated by either a scrum master or Data lead, and includes representatives of each function that Data supports. If a function in the organization has work that they would like the Data team to work on in the upcoming sprint, that function would send a representative to the meeting. Others are welcome to sit in or dial in, but at minimum some stakeholder representation is required.

As mentioned above the purpose of the meeting is for stakeholders to work with Data to come up with a rank-ordered list of tickets for consideration in Data's next sprint. The entire group must come to a consensus around which ticket should be ranked first, second, etc... The meeting facilitator literally moves tickets up and down the board and the group decides (and sometimes debates?) where a ticket should land. This way the Data team's workload is aligned with the organization's priorities without Data having to chase down stakeholders and decide what the most important initiative is this sprint. If Marketing and Product disagree on what is most important, the entire room can weigh in together with the end result being one ticket is ranked above the other. Data should opine on the technical feasibility or difficulty of executing certain tasks but in general should be unbiased participants. Data should act as tie breakers, not king makers. 

### Setting stakeholder expectations

Each function in the organization sends a representative to make their case. The stakeholder gets both the opportunity to argue for their ticket's priority and get insights into where it ends up in the queue (and why). As a result stakeholders are less likely to be confused or have questions about why their project is not being worked on during the sprint. This reduces possible resentment or the potential for contacting analysts with extraneous requests. The prioritization meeting establishes a two-way communication between Data and the rest of the organization. The final queue is an acknowledgement that if Data doesn't include a ticket in the sprint, the onus is on us to explain why. Transparency keeps us accountable.

### Workload transparency

Transparency into Data's sprint process reduces the chance for misunderstanding our priorities. For example, say that during a particular prioritization meeting the consensus is that Data should prioritize Product's most urgent task over Marketing's. Then during the sprint, Marketing is less likely to ask why we don't work on their task, and if they do, we can point to our board and show them what we are focused on. The conversation is much easier since there is a built-in understanding of how our work is prioritized. Better yet, Marketing can look on our board (assuming project management is visible to the organization) and see for themselves.

### Better quality tickets

Each function must persuade every other function that their ticket is most important or at least more important than another team's. This organically biases each request to be well thought out and clearly depicted because when CustOps needs to convince a room full of non-CustOps folks that their Zendesk integration should be prioritized, it is in their best interest to have more than a one line ticket description. Usually the more well formulated the ticket and the better it aligns with organizational priorities, the more likely it will get prioritized. This nudges Data team tickets to be more valuable and easier to understand, minimizing (but not eliminating of course) the potential for back and forth later in the sprint. As a bonus, the onus of figuring out if a request is valuable or not is no longer on the Data team, easing some pressure from the sprint planning meeting.

### Appreciation for the Data Team

Stakeholders attending the prioritization meeting for the first time get an eye-opening glimpse into how much the Data team does. Marketing may not have considered Analysts need to think about the data warehouse infrastructure as well as statistical assumptions involved in an A/B test as well as considering the value of Brand vs. Direct marketing. And of course, Data usually has to help Finance with all kinds of work. Because Data cuts horizontally across an organization, the breadth of work that falls in Data's scope can be surprising for stakeholders who are used to focusing on a slice of the organization.

### It gets more efficient

Adding another meeting to everyone's already busy schedule is the last thing anyone wants. However the prioritization meeting often runs very quickly after a few iterations and with a competent meeting facilitator. Our prioritization meetings, for example, typically run under 30 minutes. The more exposure teams have with each other, the easier it is to understand how to efficiently prioritize requests. Stakeholders are incentivized to pick their battles. And in practice since the top few requests are likely to be worked on, those tickets that fall beneath the "will probably work on" threshold are for the most part lower priority anyway, and hence subject to less vigorous debate.

### No promises

Finally the beauty of the meeting is no promises are made except that the Data team will consider working on the requests in the order specified. During sprint planning it may be decided that:

<li>Certain tickets are ill-defined or are technically infeasible
<li>Internal Data team work is prioritized above the business' requests
<li>Due to resource constraints not all prioritized tickets will be worked on

This allows for flexibility for the Data team to not be completely beholden to the business. If a prioritized ticket gets deprioritized during sprint planning, it simply moves to the top of the queue for consideration in the next prioritization meeting. This requires clear communication from the Data team identifying which tickets made it and which tickets did not make it in the upcoming sprint. The prioritization meeting therefore is not destiny, but instead a guide ensuring that Data's work is aligned with the organization's. 

### Does it scale?

In my experience prioritization meeting works well when there are fewer than 8 active stakeholders in the room. Of course your mileage may vary. Data is there to help facilitate the conversation and chime in with technical thoughts on implementation, potentially opining on how difficult or simple a stakeholder task is. But what happens when an organization has 100's of Data stakeholders? In my estimation nothing changes except the scope of the meeting. You can have a Marketing<>Data prioritization meeting, a Product<>Data prioritization meeting, and so on. And perhaps there is a higher level prioritization meeting with the heads of each function, playing a similar role as a [scrum of scrums] (https://www.scruminc.com/scrum-of-scrums/). This meeting would occur with less frequency, say monthly, instead of each sprint. But the process and benefits remain the same. This meeting scales. 

### Now, prioritize!

Agile [doesn't necessarily work]({{< ref "agile-analytics-p2.md" >}}) for every Data team, and each team should be free to amend Agile philosophy to fit their needs. Having said that, in this post I showed that through setting expectations, aligning with organizational priorities, and helping to ensure high quality stakeholder requests, the sprint prioritization meeting is a valuable tool in almost any Data team's project and team management repertoire.
