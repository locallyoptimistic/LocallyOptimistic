---
author: Randy Clinton
title: "Bad communication kills good analytics"
cover: MISSING
publishDate: UNKNOWN
tags:
 - teams
 - communication
 - presentation
---

Poor communication within an Analytics team and between that team and the rest of the company, leaves highly skilled Analysts solving the wrong questions, lacking support for big ideas and and ultimately departing the company unfulfilled by their work. In this post I will discuss ways a team can improve performance and employee satisfaction by focusing on constructive conversions.
<!--more-->

Analytics teams exist because companies want better conversations. Technical tools allow us ways to find information, but at the end of the day we need to talk about it. A productive Analytics team grounds these conversations in truth and testing. A discussion about marketing ad spend is better when the Analytics team brings in an understandable attribution model. A decision about product offerings is better when the Analytics team shares market research. Strategies to increase re-purchase rate are better when the Analytics team has customer behavior analysis. 

High functioning analytics teams use four types of constructive conversations:

1. Talk as a team
2. Talk about your work
3. Talk about the business
4. Talk about where the data is buried

## 1. Talk as a team
Each week your company has a number of people digging into data, reading documentation for various programming language modules, and attempting to solve business questions. Teams focusing on talking together spend less time re-learning the same thing. Their members spend less time being frustrated in solitude, and they enjoy their work because they’re learning more.

Here are some ways I have found to promote good intra-team communication:

### Crowdsource “I’m stuck”
Create a safe space to ask questions and discuss shortcomings. It can be a team meeting or a private channel for the Analytics team, but this is crucial to embracing and learning from failure. You are asking team members to be vulnerable, so set the example in these places by sharing your struggles. The responses should be supportive and in line with a team committed to growing together.

### Code Review
Include a process for documenting and reviewing work in your team’s definition of “done.” The common definition of “done” reminds the team what they have agreed to produce. During the code review, the reviewer gets to walk through exactly what, why and how this was done. Additionally, good code review reinforces best practices within the team. Code review for analytics is often substantively different from code review for software engineering because reviewers need to check the business logic and the analytical methods as well as the code.

### Show and Tell
Use time during your team meeting to have a team member present something they have learned or done. I would suggest a tempo where a person is not asked to present more than once every 4-6 weeks. Be explicit with the goals ahead of time. For example, it might be more valuable for everyone on the team to know what kind of output your Tableau experts can create or why the work was meaningful to a stakeholder, instead of knowing how to create it themselves. A clear purpose helps focus the presentation and the attention of the audience.

## 2. Talk about the business
I remember bouncing with excitement when pitching my boss an idea for a predictive model assisting another business unit, only to be shown the potential upside of the project could not possibly be worth my time. I had better luck when I found cross-department team members to become collaborators, and as I learned their concerns, I found support for projects that weren’t just interesting to me, but also valuable for the company.

When Analytics teams meet to discuss projects, everyone should understand what drives revenue (and profit), which parts of the business drive the most / least, and what is the focus/priority for top management. Analytics teams are staffed with curious people. Business context makes their curiosity more likely to end in in projects worth doing.

Here are some techniques to build the team's knowledge about the business:

### Lunch with Analytics
Invite someone from another department to lunch with the analytics team each month. I would scale to a roughly 1:5 ratio of “them” vs analytics team members. Don’t make it more complicated than necessary. The result should be a team of data people who understand a slice of the company and know someone in that department they can return to if they need to understand more.

### Read Reports
A team has told you, this metric matters so much that we want to review it every day/week/month. If you want to find ways to leverage the rest of the analytics tool box, you will want to start with knowing why these metrics matter so much and what they mean. If their purpose don’t make sense, talk with the stakeholders about it. (see also: [_“Reporting is a Gateway"_]( https://www.locallyoptimistic.com/post/reporting-is-a-gateway-drug/) )

### Pop Quiz Yourself
In the course of brainstorming you will notice people say, “I wonder how often X happens?” Make a running list of these small trivia style business questions and cut out every week or so to find the answers. These should be quick hits, not complex questions. For instance: “what is our conversion rate?”, “how much mobile traffic do we get?”, “what is the gender split of our audience?”, and “what is the distribution of categorical variables in this data set?”. Maybe consider adding these metrics to a dashboard.

## 3. Talk about your work
Our research should be framed in terms of actions the business can take - I learned this the hard way. 

I gave a co-worker horrible advice about a presentation as he was preparing to show the Director of Marketing our research. I had not worked much with this stakeholder, but remembered being told he really likes digging into the data. The presentation looked like a Stats 101 lecture. It had everything: coefficient significance tests, ROC curve plots, and the confusion matrix (which did just that). It was bad.

He wanted to know what the statistical analysis meant in prescriptive terms. He had decisions to make on spending and targeting and this meeting was supposed to give him the details he needed. He was data-driven, he wanted to make decisions backed by solid research. 

Here are some techniques to improve presentations:

### Scout First
Do everything you can to avoid a meeting where you don’t know what the stakeholders expect from you. Maybe engineering wants to dig into the architecture details of deploying a model, or a non-technical manager wants to understand survey analysis. A quick 5-minute sit-down a few days before the “real” meeting goes a long way to making sure everyone is on the same page when the meeting happens.

### Trim the Fat
We work hard to accomplish interesting things, and we want to share that with the rest of the business. But, it is almost always too much content. Most human brains can track 3-5 things at the same time, so each “interesting” thing you add pushes your luck that the boss will forget the key finding or proposal that all the work went into. Give it room to breathe.

## 4. Talk about where the data can is buried
Analyst's ideas run on data. Without it they fizzle out with an exasperated “but we don’t have data on ....”. Data dictionaries and other aspirational processes are great, but in reality nuggets of data and business logic live all around the company. I recall being able to help one business unit solve a question by weaving together scattered pieces we had heard about from three other departments.

It might take a clever trick to tie it back to the rest of your data, but you will breathe new life into ideas and add new value to the company. With each discovery, the team gains new insights for those “what do we know” conversations in the company and unlocks ways to solve questions team members had considered impossible to answer.

Here are some techniques to learn about what data you have at work:

### Follow Crumbs
If a co-worker presents a data point that you are unfamiliar with, or you think it came from some unfamiliar source, follow up and understand their process to get data. For instance, you might have third party tools and internal tools that measure the same metric, but those third party tools might also include some domain-specific data. For instance, maybe Marketing has a data vendor that offers richer data on customers than your transactional database. That information is key for their decision making, but might also unlock new ideas around the company if you could find better ways to share it. 

### Track the trackers
If you use tracking tools like Google Analytics, get to know the people who add new tags. Keep regular conversations with them on what new things are being tracked. Two different team members might make requests for tracking to help their individual projects, but when combined unlock a set of new possibilities for an Analytics team.

### Know the code
The technical knowledge on Analytics teams gives them access to more technical conversations with the people actually creating the data. You can talk about the specifics of data feeds, server logs and ETL processes to make educated guesses about what other data is floating around, even if it doesn’t exist cleanly in your databases. Keep an open line of communication with those engineers and make time to share the data points desired most often.

## Conclusion
Analytics teams will be successful when they know the right problems to solve, leverage the knowledge of the entire team, find collaborators and patrons across the company, and have an exhaustive understanding of the data they use. Moreover, the Analysts will feel more connected with each other and with the purpose of the company, which ultimately results in better work and happier Analysts.

We here at Locally Optimistic are curious to hear examples from you about how data teams have become better communicators -- drop us a comment.
