---
title: "The Value of Reordering Lists"
author: "Harlan D. Harris"
tags:
 - machine learning
 - data science
 - optimization
date: 2018-06-10
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

In this post I'm going to cover some common ordering problems that organizations face, 
some of the complexity that can arise, and some 
thoughts on how to present rankings in user-facing products. I'll discuss:

* Solving the Right Ordering Problem
* Rank and Predictive Analytics
* Reordering and Optimization
* Presenting Ordered Lists

Throughout, I'll use a few examples. 
Two classic problems in sales and marketing are simply applications of reordered lists: 
ranking sales leads and triaging churn risk. 
If you can predict the likelihood of each of your leads converting, or which of your
accounts are least likely to renew their contracts, you can focus your efforts, maximizing
bang for the buck. 
And whether it's Netflix recommending TV shows it thinks you'll like, or
Buzzfeed recommending listicles to you, all 
[recommender systems](https://en.wikipedia.org/wiki/Recommender_system) 
do is put things in order,
in a (hopefully) compelling, personalized way. 

# Solving the Right Ordering Problem

When ranking sales leads, it's pretty clear that you want to put the most likely to convert
up top. But when recommending things, your goals are less clear. Just putting the items
that _historically_ have been clicked on first doesn't mean you're actually maximizing
interactions. If your Netflix-like site puts Adam Sandler movies first,
for some reason, then the next time your recommender system tries to learn, it will 
probably learn that Adam Sandler movies get clicked on a lot. But not because they're 
great, but just because you previously were presenting them a lot! This
sort of bias, where you're learning from your own (weak) recommendations, can be 
hard to notice. Instead of solving the problem "put popular stuff first", you
should be solving the problem "find out what's popular, _then_ put it first."[^1] 
In [reinforcement learning](https://en.wikipedia.org/wiki/Reinforcement_learning) 
jargon, you need to balance _exploration_
and _exploitation_.

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

# Rank and Predictive Analytics

Your model for estimating whether a customer will 
churn probably outputs a probability, but most 
likely, all that really matters
for this task is getting the order right.
In fact, the metrics that are commonly used to evaluate categorization models
in tasks like this often explicitly
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

# Reordering and Optimization

The FDNY building-inspection problem can also illustrate the next level of
complexity. It's great that we have a ranked list of
locations to inspect, in decreasing risk of fire. But what if that list happened
to be ordered such that locations 1, 3, and 5 were on the far West side of town, and 
locations
2, 4, and 6 were on the far East side? We'd be wasting a great deal of time criss-crossing,
which could put buildings at risk longer than they'd need to be, defeating the 
purpose of our powerful model.
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
[integer programming](https://en.wikipedia.org/wiki/Integer_programming) or
[genetic algorithms](https://en.wikipedia.org/wiki/Genetic_algorithm), we might find
orderings of the property list that solve the problem more efficiently

# Presenting Ordered Lists

In the discussions above, I've implied that the user is seeing a list -- of 
ranked sales leads, or fire-prone properties, or whatever. But what choices can be made in
the visual design of that list, so that users  
interpret the ranking appropriately, and trust that the ranking is relevant?

Merely presenting items in a list doesn't indicated whether a highly-ranked item is
one that has a _high likelihood_ of an outcome (movie you'll rank highly; customer who will 
churn),
or one that has a _high propensity_ to benefit from some sort of interaction.
These are not the same thing. It's often not very useful to rank something highly
if you can't do something about it! If Netflix knows that I'd love a movie, but that they
don't have the legal right to show it to me, they won't recommend it. If customer X is
very likely to churn, but I know that there's nothing I can do that will change their mind, 
is it worth my time to give them a call?

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

More sophisticated 
[intervention models](http://www.pnas.org/content/pnas/113/27/7310.full.pdf) 
can sometimes infer causality from data, allowing ranked lists to be based on
propensity to benefit. 
In [political marketing](https://www.technologyreview.com/s/509026/how-obamas-team-used-big-data-to-rally-voters/), 
for instance, the goal is not to find voters
most likely to vote for a candidate, but instead to find votors whose likelihood
of voting the way you prefer is _most likely to be changed by an intervention_, such
as a visit from a canvasser. (Of course, if you use shadily-acquired personality data,
and create interventions based on triggering voters' deepest fears, 
[you have created a different sort of problem](https://www.vox.com/policy-and-politics/2018/3/23/17151916/facebook-cambridge-analytica-trump-diagram).)

# Final Thoughts

Although the temptation in data science can be to solve the 
[hardest problems](https://www.vanityfair.com/news/2018/05/uh-did-google-fake-its-big-ai-demo)
using the [latest methods](https://blog.openai.com/adversarial-example-research/), 
it's often the case that solving simpler problems, like ordering lists better, can be 
a better use of time and effort. 
But even that simple problem can be difficult in practice. Solving the right ranking problem,
such that people reading the lists interpret them appropriately, can be 
[harder than the actual statistical modeling](http://www.mitgovlab.org/news/taking-a-bite-out-of-wicked-problems/). 

Do you have a great example of reordering lists that led to a real impact to a business
or organization. We'd love to read about it in the comments!

[^1]: Sometimes putting the most-likely-to-be-clicked-on content
first is problematic for other reasons; 
[filter bubbles](http://www.pewinternet.org/2017/10/19/the-future-of-truth-and-misinformation-online/) 
can make people think that the content they like is the only content that exists.

