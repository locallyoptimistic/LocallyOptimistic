---
title: "Building a Data Practice from Scratch"
author: "Jeremy Salfen"
cover: "/img/building-a-data-practice.jpg"
tags: ["process", "communication", "documentation", "project management"]
date: 2018-11-11
draft: false
---

The first data hires at an early stage startup face numerous challenges — an infrastructure built to run the business but not analyze it, an organization hungry for information without a process for requesting and prioritizing it, and little documentation on how anything is done. What should they do first?

<!--more-->

I recently found myself in a position like this at [Sawyer](https://www.sawyertools.com/company), a platform for children's educational activities. There are good resources for startup founders hiring for analytics — I highly recommend [Tristan Handy's post](https://thinkgrowth.org/the-startup-founders-guide-to-analytics-1d2176f20ac1) — but not much has been written for data leads at a new organization.

In this post I share some ideas on tools and processes that have been helpful for me. Of course, you should also be thinking about business analysis — defining key metrics, generating financial reports, and doing strategic research. You will also have to think about data infrastructure — databases, pipelines, ETL, BI tools. Those are big topics that are better left for other posts. Here I focus on building a data practice which will form the foundation for all your analysis and infrastructure work.

There are a few principles woven into the suggestions below:

* Don't worry about making things fancy. Do the simplest thing that works now.
* Keep an eye on how things will scale, but rein in your impulses to optimize them. Analytics should be lean and agile, too.
* Documentation, transparency, and reproducibility are interrelated and fundamental. Start good habits in these areas now, but expect to iterate on them and change how things are done as the organization matures and grows.

With those principles in mind, here are my recommendations for what to do in your first weeks at an early stage startup.

### Map the data infrastructure
Start documenting all the places where data is stored, processed, and accessed. Does your organization have multiple databases? Does it have external data sources? Are there systems moving data from one place to another? How are people interacting with data? Write this all down, and include links and information about how to get access.

Of course, not all data sources are equally important. If your salespeople use software for calling sales leads, it's probably enough to make a note of the software name and move on. The depth of documentation should be roughly in proportion to the value of the data and its role in your work.

Eventually this information can be part of an internal wiki with illustrations showing a dependency graph, but don't bother with that yet. Just make a Google doc for now.

While mapping the data infrastructure, start thinking about what is missing, what you would like to change, and what the future infrastructure might look like. These ideas can go on your roadmap, which I cover next.

### Plan your roadmap
One of the perennial Data team struggles is balancing the short term and the long term. You will be busy right away, pulled in multiple directions, but you should take the time to form opinions about the future. How would you like to evolve data tooling, infrastructure, processes, and people?

Think about what is missing, what can be improved, and how they align with the organization's priorities. Are you using Google Analytics for tracking? That might be fine for now, but many businesses will eventually need something more powerful. How are reports being run? If data is primarily accessed and explored in spreadsheets, you should think about options for BI tools. Who should be hired next? A data analyst? A data engineer?

Form opinions about your roadmap now so you will be prepared to advocate for it whenever it comes up. What will you say when someone in marketing decides they want to integrate a new service, or when an engineer starts to build a data tool in house, or when the founders raise more funding and ask you how to spend it?

### Create a data dictionary
As you learn things, especially things that are surprising, write them down. Think about what the next data hire will need to know. You can start by getting alignment and clarity on key terminology in your organization, like the definition of *active users*. Avoid the urge to make this fancy — a Google doc is fine.

The concept of a data dictionary is a bit controversial. What do you include? What don't you include? How do you maintain it? For more mature organizations, I recommend considering [Carl Anderson's suggestions](https://medium.com/@leapingllamas/data-dictionary-a-how-to-and-best-practices-a09a685dcd61) for using a data dictionary to create a shared understanding around key metrics and vocabulary.

In this case, though, a data dictionary is primarily for you and future data hires. Even though the business and its data will change over time, there are still key pieces of information that are useful to document. Are timezones in UTC or your organization's time? What are some core pieces of business logic? How are key metrics calculated? Are there important database tables or column names that are not self-explanatory?

Do *not* set yourself the goal of creating an exhaustive data dictionary. The completionists find it challenging to leave all of those columns undocumented, but not only will it be time consuming to create, a pain to manage, and seldom read, but despite your best efforts it will get quickly out of date.

At Kickstarter, we called this document *Common Data Gotchas*, which is a good way to think about it.

### Use a project management tool
Start tracking all the work you do, even quick data requests. Write down the question, the results, and how you got them. Encourage others in your organization to interact with you in this tool, but be careful not to make using the tool overly burdensome. Sometimes the CEO has a quick request, and you should just do it and document it later.

Don't get too hung up on the process now — the key reason for using a project management tool is documentation. It will help with reproducibility, so you can easily recreate a dataset or an analysis in the future. It will also make your work visible, demonstrating your impact on the business.

The process itself will be helpful as your data team grows. Handling data requests via email may be fine when you are the entire data team, but what happens when you add more people? Where will they find documentation on how previous analyses have been done? How will they know about the work everyone is doing? Investing in a lightweight system now will pay dividends down the road.

My first choice for this tool is Trello, but use whatever integrates well into your organization.

### Create communication channels for data
Strive to make all your communication transparent. Transparency, documentation, and reproducibility go hand in hand.

If you are on Slack, create a channel for data. People will email or Slack you directly, but, when possible, move those conversations to open channels on Slack or on your Trello board so there is documentation of what was discussed. A valuable by-product of this is others can learn about what you do. Slack and Trello can be valuable channels for data evangelism.

If you get reports or alerts emailed to you, move them to group mailing lists. I recently created a data pipeline, and rather than having error alerts emailed only to me, I set up a mailing list dedicated to data pipeline alerts. This creates a paper trail that others can search, and it enables people to subscribe to alerts on their own.

### Start a code repository
Set up a GitHub repo and use it liberally. Save your queries. Save your code. Write comments in your queries and code — for your future self and your future colleagues. Add your commits to your Trello cards. You can even integrate GitHub into Trello to handle permalinking for you. 

Don't worry too much about what goes where. You will end up tinkering with the organization of your repo over time. The key thing is to get in the habit of committing everything and linking those commits to wherever you document your work.

### Talk to everyone
Schedule time with at least one person from every team, if not the whole organization. Ask them how they think about success and whether they track any metrics. Identify the data sources they use. Find out if they are running any reports, and consider [creating the reports for them]({{< ref "reporting-is-a-gateway-drug.md" >}}).

While doing this, figure out who is data savvy in the organization — they will be great resources and make your life easier. I have found that, outside of Engineering, the most data savvy folks at startups tend to be in Finance and Operations. Of course, you will want to get close with the Engineering team. They will be your partners in determining how data is generated, processed, stored, and accessed.

### Embrace yes
One of the core values at my startup is "Embrace yes — always." In my first 30 days, I simply [said yes](https://en.wikipedia.org/wiki/Yes,_and...) to every request that came along. I wanted to get a feel for a variety of projects, work with different teams, and use that experience to build my understanding of the business and its data ecosystem. I also wanted to gain the trust of my coworkers, proving myself to be a willing collaborator before showing my skeptical side that questions everything.

After 30 days, I started the hard work of clarifying and prioritizing, asking questions like, "Why do you need this? What will you do with it? How will it impact your decisions?" I pushed back on some requests. I looked for assumptions, sources of bias, errors in logic.

Was this the right approach? Frankly, I don't know. I could see it backfiring, especially if you can't switch gears to questioning mode. My plate filled up quickly by the end of the 30 days, and it's hard feeling behind in a job you have just started. Ultimately, whether this is successful is dependent on you and your organization.

### Build your network
You may be the only data person at your startup, but don't feel you have to go it alone. Work on [building your network]({{< ref "analytics_brain_trust.md" >}}) of other data practitioners so you have a place to go with questions, to get feedback on your ideas, and to keep up with the field.

There are great communities out there to get you started. In fact, this very blog has [an active group on Slack]({{< ref "community.md" >}}).

----

If you find yourself in this position, congratulations! It's an exciting time to be at a company. The work you do now can have tremendous impact. Don't let that stress you out though. Take an iterative approach, trying things, reflecting, and changing course when necessary. Remember that documentation, transparency, and reproducibility are key principles, and they will pay dividends down the road as you lay the foundations of a successful data practice.
