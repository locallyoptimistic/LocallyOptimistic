---
author: Michael Kaminsky
title: "Agile Analytics, Part 3: The Adjustments"
publishDate: "2018-07-01"
draft: true
tags: 
 - agile
 - scrum
 - process
---


Agile software engineering practices have become the standard work management tool for modern software development teams. Are these techniques applicable to analytics, or is the nature of research prohibitively distinct from the nature of engineering?

In this post I discuss some adjustments to the scrum methodology to make the process work better for analytics and data science teams.

<!--more-->

If you haven't already read them, you can find

* [part 1 here]({{< relref "agile-analytics-p1.md" >}})
* [part 2 here]({{< relref "agile-analytics-p1.md" >}})

When managing a team of analysts and data scientists, we want to leverage [all of the best things]({{< relref "agile-analytics-p1.md" >}}) about the scrum methodology while adjusting for [the things that don't work so well]({{< relref "agile-analytics-p1.md" >}}). The general theme of this post is how to carve out some room in scrum for exploration, research, and iterative problem definition.

# Key Adjustments to Scrum for Analytics

  * Time-bound spikes for research
  * Build in slack time for exploration
  * Acceptance Criteria includes “write the next story” 
  * Peer-review instead of sprint-review


## Time-bound spikes for research

In order to address the difficulties in using scrum for research and exploratory data analysis, I recommend leveraging the notion of a time-bound "spike" on a particular subject. Here are a few examples of spikes you could pursue:

* Research the state-of-the-art in LTV modeling for e-commerce companies. 
* Do retention rates even vary by acquisition channel or geography? (Is this worth pursuing further?)   
* What would it take to get an MVP  recommender system working on our website? Sketch the architecture and evaluate potential upside.

All of these are interesting technical questions that require a data scientist or analyst to answer, but 1) it's unclear exactly what the right path to completing the task is, and 2) you can imagine spending nearly infinite amounts of time on each of these questions if you let yourself bury into the rabbit-hole
 
To address these issues, you should treat these as time-bounded tasks. For example, you might say that the deliverable is a one-page document outlining the results of the investigation, and you shouldn't spend more than two working days on the task (or whatever is appropriate.) 

If the task seems like it's going to take longer, that's a good time for the analyst or data scientist to come up for air and discuss what they've found with the group before pursuing the task any further.

## Build in slack time for exploration

Google is famed for having a "20%" time (though it's unclear [to what extent it's real](http://www.businessinsider.com/google-20-percent-time-policy-2015-4)) that engineers can use to work on projects outside of their normal jobs that they believe will benefit google. 

For analytics teams, building in some slack time to focus on research and exploration is critical to identifying the next big opportunity for the business. If all of your analysts and data scientists are fully allocated against to-do-list checking and reporting concerns, you may be missing huge opportunities to drive impact.

Now, I *don't* necessarily think it's a good idea to allocate one fifth of someone's working time to goofing off. It's important to implement a program like this with accountability and oversight. Here are some ideas for how to make something like this work:

* Reserve every other Friday (or every Friday afternoon) for non-sprint work
* Each team member should say what they're working on at the beginning of the day, and share whatever they've learned at the end
* The task should be *directly linked* to a plausible path to value for the company. ("Evaluate how much stratified sampling could improve our A/B testing efficiency" is a good task while "see if we can use deep-learning to play mario kart" is probably not.)


## Acceptance Criteria to "write the next story"

Often in data science and analytics research tasks, it's difficult to map out the course of the project from day 1. We expect (and want!) the things we learn in the early parts of the research phase to shape the future phases. While this can make long-term planning difficult, it's important to build the right amount of flexibility into your process. 

One trick that I like is to have the person doing the task write the story for the next task. Let's take our example spike story from above "Research the state-of-the-art in LTV modeling for e-commerce companies". The ACs for this story could be:

* Write a one-page document outlining the current state of the art (with citations) 
* Recommend a strategy for $OUR_COMPANY to pursue for LTV modeling
* Write the ACs for a subsequent story to prototype this model

By chaining stories together this way, we can continue using our scrum methodology while still allowing the individual doing the research the flexibility to iterate on their work plan as the work progresses. By actually turning each step in the project into a well defined story, we can inject both peer-review and accountability into the sometimes opaque research process.

## Peer-review in show-and-tell




# Conclusion

