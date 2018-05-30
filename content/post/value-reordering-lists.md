---
title: "The Value of Reordering Lists"
author: "Harlan D. Harris"
cover: "/img/cover.jpg"
tags: ["tagA", "tagB"]
date: 2018-05-20T17:41:41-04:00
draft: true
---

The tools and techniques of data science and advanced analytics can be used to solve many
problems. In some cases -- self-driving cars, face recognition, 
machine translation -- those technologies make tasks possible that previously
were impossible to automate. That's an amazing, transformative accomplishment.
But I want to sing a paean to a mundane but important aspect of data science --
the ability to intelligently put lists of things in a better order.

For many organizations, once you've gotten past insights, and into the realm of putting
[data products](http://www.datacommunitydc.org/blog/2013/09/the-data-products-venn-diagram)
into production, the most value can be found by identifying inefficient processes and making them
efficient. Twenty or thirty years ago, that efficiency-gain 
might have been addressed by moving a paper-based process to a computer-based process.
But now, _prioritization_ -- putting things in the right order -- can be what it takes to make
an impact.

<!--more-->

# Rank and Predictive Analytics

Let's look at a few examples. Two classic problems in sales and marketing have exactly this 
form: ranking sales leads and triaging churn risk. 
If you can predict the likelihood of each of your leads converting, or which of your
accounts are least likely to renew their contracts, you can focus your efforts, maximizing
bang for the buck. 

Importantly,
even though the predictive model you built 
might be outputting a probability, all that really matters
for these tasks is getting the order right.
In fact, the metrics that are commonly used to evaluate models if this kind often explicitly
ignore absolute predictions and focus on order. 

Take a great example that I first learned
about from [a talk by Drew Conway](http://videolectures.net/kdd2014_conway_social_science/) in 2014 -- how the New York City Fire Department (FDNY)
uses predictive modeling to focus their inspections on buildings most likely to have a fire.
"FireCast, an algorithm that organizes data from five city agencies into approximately 60 risk
factors... create[s] *lists* of buildings that are most vulnerable to fire." 
(emphasis added, [via GovTech](http://www.govtech.com/public-safety/New-York-City-Fights-Fire-with-Data.html))

![Impact of FDNY's RBIS predictive inspection program, via Drew Conway](FDNY-RBIS-DC.png)

The AUC metric associated with ROC curves like the above can be 
interpreted as a rank-based metric: "the probability that a classifier will rank a randomly chosen positive instance higher than a randomly chosen negative one." 
([via Wikipedia](https://en.wikipedia.org/wiki/Receiver_operating_characteristic))
A similar, and even simpler-to-interpret visualization, the decile-based 
lift curve, has been used for 
decades by predictive analytics professionals. Typically, after ordering the test
set by likelihood, you divide the list into tenths. For each tenth, you calculate the ratio of
the number of 
positive examples compared to the number you'd get if you
sorted randomly instead. The ugly lift chart below would tell you that you'll be three times
more effective if you use a predictive model versus a naive approach. That's impact!

![Lift chart example](ugly-lift-chart.png)

# Recommender Systems

Another type of model that creates value by ranking things better is 
[Recommender Systems](https://en.wikipedia.org/wiki/Recommender_system). 
Whether it's Netflix recommending TV shows it thinks you'll like, or
Buzzfeed recommending listicles to you, all that these systems do is put things in order,
in a (hopefully) compelling, personalized way. 

As with tasks such as sales-lead ranking, what really matters with RecSys implementations
is whether the user (in this case, typically an end-user rather than internal sales person) can
get more done with less effort. RecSys metrics are typically 
similar to lift -- of the form "proportion of top-10 items
interacted with" or "proportion of all items interacted with in the top 50 recommendations."

It's worth noting that a recommender system is just an algorithm for putting lists in order,
and that personalization or fancy math are just sometimes-helpful ways to do that. 
In some domains, such as news-like content, it's often difficult to beat simple heuristic
ranking algorithms, such as putting the most popular (e.g., clicks per visible hour) content
first. 

# Solving the Right Ordering Problem

When ranking sales leads, it's pretty clear that you want to put the most likely to convert
up top. But when recommending things, your goals are less clear. Just putting the items
that _historically_ have been clicked on first doesn't mean you're actually maximizing
interactions. If your Netflix competitor site puts Adam Sandler movies first,
for some reason, then the next time your recommender system tries to learn, it will 
probably learn that Adam Sandler movies get clicked on a lot. But not because they're 
great, just because you previously were presenting them a lot! This
sort of bias, where you're learning from your own (weak) recommendations, can be 
hard to notice. Instead of solving the problem "put popular stuff first", you
should be solving the problem "find out what's popular, _then_ put it first." 
In [reinforcement learning](https://en.wikipedia.org/wiki/Reinforcement_learning) 
jargon, you need to balance _exploration_
and _exploitation_.

A related problem has to do with the impact of putting what people _want_ ahead of
what they _need_, or what they _should see_. 
When recommending news articles, if you're good at
using "people like you read content like this" collaborative filters, you
can create [filter bubbles](), where your users consistently see content with their
particular point of view. Although filter bubbles on a sports web site could keep you
from seeing articles you might otherwise like,
filter bubbles in political contexts can [create polarization](). 
When the mission of your site is to inform people, simply optimizing clicks can
be solving the wrong problem.

My current company, 
[WayUp](http://wayup.com), also has to think carefully about what problem
we're trying to solve. Among other things, WayUp recommends job listings to 
college students and young professionals, where the goal of the recommendations is to
get our users to find great job opportunities, without having to spend a lot of time
searching or scrolling. For us, maximizing total clicks probably means we're creating
an inefficient experience!
A pretty good outcome for us is a user who creates a profile, sees some recommendations, 
clicks on
the first one, applies, gets the job, and doesn't come back (except to maybe read
blog posts) for two years. That's one click. So we don't try to maximize total
clicks. Instead, we look at metrics
like the proportion of users who apply to any jobs, or the positions in the recommendations
list of applied-to jobs. 

# Reordering and Optimization

Let's return to that FDNY building-inspection problem to illustrate the next level of
complexity. It's great that we have a ranked list of
locations to inspect, in decreasing risk of fire. But what if that list happened
to be ordered such that locations 1, 3, and 5 were on the far West side of town, and 
locations
2, 4, and 6 were on the far East side? We'd be wasting a great deal of time criss-crossing,
which could put buildings at risk longer than they'd need to be.
Perhaps it would be better to take travel-time into consideration?

This sort of optimization problem has been tackled for many decades by
the field of operations research (OR), theoretical computer science, and applied math. 
A classic example is the 
[traveling salesperson problem](https://en.wikipedia.org/wiki/Travelling_salesman_problem),
where the goal is to
order a list of cities to minimize total travel distance. In the FDNY example, we have
a 
[multi-objective optimization](https://en.wikipedia.org/wiki/Multi-objective_optimization) 
problem, where geographic optimization is combined with a ranking problem. 
If we put a _cost_ on inspecting locations in the wrong order, and a _cost_ on
driving, we can numerically optimize the order such that the overall cost is minimized. 
By using techniques such as 
[genetic algorithms](https://en.wikipedia.org/wiki/Genetic_algorithm), we might learn that the best approach
is to look at one neighborhood every day.

# Presenting Ordered Lists

In the discussions above, I've implied that the user is seeing a list -- of 
ranked sales leads, or news articles, or whatever. But what choices can be made in
the visual design of that list, so that users learn what they need to and 
interpret the ranking appropriately?
Additionally, in some domains, the individual
items can be viewed on their own as well. When you click on a specific sales lead, or
news article, does the rank (or underlying score) still contain useful information?
If you came to the item via the ranked list, perhaps not. But what if you came
to the item some other way, such as through search? When you see a news article, is
it informative that "we think you'll like this?" What if you're looking at a customer,
does "we think they're in the top 20% most likely to churn" have value? It might, but it
could also be misinterpreted.

A particularly problematic misinterpretation is whether a highly-ranked item is
one that has a _high likelihood_ of an outcome (movie you'll rank highly; customer who will 
churn),
or one that has a _high propensity_ to benefit from some sort of interaction.
These are not the same thing. It's often not very useful to rank something highly
if you can't do something about it! If Netflix knows that I'd love a movie, but that they
don't have the legal right to show it to me, they won't recommend it. If customer X is
very likely to churn, but I know that there's nothing I can do that will change their mind, 
is it worth my time to give them a call?

In marketing, current approaches to reordering lists typically use intervention models
of various sorts. 
In [political marketing](https://www.technologyreview.com/s/509026/how-obamas-team-used-big-data-to-rally-voters/), 
for instance, the goal is not to find votors
most likely to vote for a candidate, but instead to find votors whose likelihood
of voting the way you prefer is _most likely to be changed by an intervention_, such
as a visit from a canvasser. (Of course, if you use shadily-acquired personality data,
and create interventions based on triggering voters' deepest fears, [you have
created a different sort of problem](https://www.vox.com/policy-and-politics/2018/3/23/17151916/facebook-cambridge-analytica-trump-diagram).)

Models that rank items can sometimes provide insight into why a particular item was
ranked where it was. For instance, the technique of 
[ensembling](https://dl.acm.org/citation.cfm?id=1835893) a variety of independent
models can provide userful information by indicating why particular items were 
ranked highly. If a recommended item was ranked highly by the Popularity submodel,
you can put "Popular!" next to that item.
These explanations can help users trust recommendations, 
both by making clear that
the ranking is built from factors that users believe to be causal, as 
well as by "explaining away" recommendations that may not be useful to them. A churn model
that indicates that Customer X is likely to not renew their contract, because there's 
data that they're going out of business, is trust-worthy even when it's not actionable.

Another thing to consider is
under what circumstances should you provide a plain list, versus a list with numerical
scores, versus a list with rank categories (high/med/low or red/yellow/green)?
Suppose you're 
trying to provide the FDNY a list of properties they should inspect. As the diagram
above suggests, giving them the properties in ranked order is useful. Is it more
helpful to provide numbers along with that ranking? The top location is 2.1% likely to
catch on fire this year -- is that helpful? Or should you color-code by high/med/low risk,
and if so, where do you draw the boundaries?

At a [previous employer](http://eab.com), 
we built a model of college students' likelihoods to fail to graduate,
so that academic advisors can reach out and provide support and services. An interesting
question that we tackled was how and when to present these risk scores. As of when I left 
the company, 
we were presenting several options to each college, and letting them choose based on their
organization's
culture and how they thought about risk and triage. 

One option was to put an equal number
of students in each of three groups. But for colleges with high graduation rates, that could
put a large number of students who are still quite likely graduate in the "red" 
category, which was unappealing. Another option was to fix the boundaries at 33% and 66%.
But for colleges with low graduation rates, this meant that most of their students
were in the "red" or "yellow" categories, which could be disheartening. I tended to recommend
another option -- 
boundaries of 50% and the overall graduation rate. So, for a college with a 75% 
graduation rate, students with a less than 50% graduation rate would be red, those in the 
50% to 75% range would be yellow, and 75% or higher (about half the population) would be green.
Having grounded boundaries like this seemed to me to be a good way to help academic advisors make
sense of this ranked and color-coded list. 
That is, we were ordering a list using a well-calibrated model,
then leveraging the underlying risk scores to provide intuitions about what list-position
actually meant.

# Final Thoughts

(ugh, need some ideas for how to wrap this up...)
