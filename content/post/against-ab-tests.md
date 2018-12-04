---
author: Michael Kaminsky
title: "Against A/B Tests"
cover: "/img/against_ab_test.jpg"
publishDate: "2018-12-04"
tags:
 - Statistics
 - Testing
 - Web Analytics
---

The notion of an A/B test is premised on the fundamentally flawed assumption that there exists one version of some treatment that is better on average for all users. Analytics practitioners should reject the assumptions of homogeneity and start designing systems that allow for (and encourage) non-binary outcomes of tests.

<!--more-->

In the past few weeks, two really interesting articles about non-standard interpretations of A/B tests have been published. One, from [Uber's engineering blog](https://eng.uber.com/tag/quantile-treatment-effects/), is about calculating "quantile treatment effects" and the other, from [StitchFix's always excellent data science blog](https://multithreaded.stitchfix.com/blog/2018/11/08/bandits/) discusses the use of contextual bandit algorithms to achieve personalization.

Both of these posts are interesting, but I think they both bury the lede a bit as they dive into interpretation and implementation details. I'll restate my thesis for emphasis:

**Traditional A/B testsing rests on a fundamentally flawed premise. Most of the time, version A will be better for some subgroups, and version B will be better for others. Choosing either A or B is _inherently_ inferior to choosing a targeted mix of A _and_ B.**

Unfortunately, embracing this approach to testing, optimizing, and building software products will not be easy. It will require new statistical tools, new tools for writing and maintaining software, and a lot of education to get the relevant stakeholders onboard. 

In this post I will provide a motivating example and then talk through some of
the challenges that will come with building systems that can adapt to this new
reality. I will not discuss any of the underlying statistics associated with
building these types of systems ([the stitchfix post](https://multithreaded.stitchfix.com/blog/2018/11/08/bandits/) and [this post from
google](https://support.google.com/analytics/answer/2846882?hl=en#) are great places to start for that), but instead will discuss what I see as opportunities at a strategic and architectural level.  
## Motivating Example

Just to convince you that this is important, let's work through a short numeric example. While these numbers are fictional, they harmonize with examples I have seen countless times during the real-life evaluation of A/B tests.

Yet Another Mattress Company (YAMC) sells mattresses online (you may have seen their advertisements on the subway). They want to test a new version of their checkout flow that is optimized for mobile. The designers are a little bit concerned that while this new version is less clunky, it also conveys less information during the checkout flow, so it could hurt conversion on desktop.

The team launches the test, and here are the results:

| Test Arm         | Impressions | Conversions | Conversion Rate |
|------------------|-------------|-------------|-----------------|
| Mobile Optimized | 10000       | 300         | 3.0%            |
| Old Version      | 10000       | 300         | 3.0%            |

Rats! No difference. On a hunch, you decide to split the results by mobile and desktop traffic.

| Device Type | Test Arm         | Impressions | Conversions | Conversion Rate |
|-------------|------------------|-------------|-------------|-----------------|
| Mobile      | Mobile Optimized | 3000        | 250         | 8.3%            |
| Mobile      | Old Version      | 3000        | 100         | 3.3%            |
| Desktop     | Mobile Optimized | 2000        | 50          | 2.5%            |
| Desktop     | Old Version      | 2000        | 200         | 10%             |

Wow! The new version ... did exactly what the designers expected! It made things better for mobile users and worse for desktop users[^1].

It is really too bad that our A/B test showed no effect. I guess we'll have to send our designers back to the drawing board...

But wait! What if we serve the mobile-optimized version to customers browsing on mobile? And serve the desktop-optimized version to customers browsing on desktop? What if we found a landing page that worked better on weekends when people have more time read? What if we find advertising copy that works well in California but not in Massachusetts? 

**What if websites didn't have to be one-size-fits all?**

## Challenges

I cannot tell whether this idea is obvious or revolutionary. It feels so obvious as to be almost silly, but if you look at the way most organizations build, test, and deploy software it is actually a pretty fundamental shift in the way we approach software problems.  

In many organizations, there is still one version of the production web application. Tests may be run, but once a test is declared a winner or a loser, the losing versions are discarded and there is a new "king of the hill" one-true-production-application.

In order to fully embrace the variability we actually see in our customers and our users, we need to build software in a fundamentally different way. We will need new and better tools, and we will have to educate our stakeholders on this new way of thinking about the world.

Today, trying to manage a customer journey with so many variation is very difficult (if possible at all). Because the overhead of managing these variants is so costly, many organizations never attempt much personalization at all.  Below, I discuss these challenges in more detail and begin to sketch what solution to these problems might look like. 

### Software Tools

In this brave new world, where we serve different content to different user groups (in proportions that may shift over time) we will need tools for both building and understanding our software. 

The most obvious immediate impact of such a paradigm would be a dramatic increase in the code surface-area of a project. Instead of retiring old code paths after a test has been run, we actually have to keep them running (potentially forever). This is scary!  

What we need are ways to build applications _more modularly_ so that we can develop, test, deploy, and maintain new code-paths (e.g., new test arms) perpetually.

Because we want to be able to fork users down different code paths based on their attributes (with a potentially large number of forks for a given customer journey) we need to engineer architectures that can support this forking. We need a _centralized decision engine_ that can decide which path a given user should be put on, and we need the path components to be sufficiently interchangeable so that users have a seamless journey even when the path components were developed independently without a view of a holistic "user journey".

Finally, without a single, holistic, user journey, we need tools for product managers and designers to be able to envision the customer journey in a garden of forking paths. How do we ideate and size new features? How do we trace what steps a given user even experienced when they used our application? How do we prevent the application from becoming an opaque mess of code spaghetti?

### Communication and Education

This new way of thinking about software development will be especially challenging for non-engineers to conceptualize and think about. Executives have been trained to think about a single user journey with a single brand voice and a single, uniform experience. As we start personalizing the user experience, the ability to reason about the application holistically will go away.

We will need to educate our stakeholders on the value of this approach, and we will have to help them reason about the customer journey and the brand voice in such a context. We will need to develop methods of explaining which journeys are most common, and give them the tools to explore the application while "assuming the identity" of a particular subgroup so that they can experience the personalized application from the perspective of different customers.

### Statistical Tools

Perhaps most obviously, in a world without A/B tests, we will have to throw out many of the tools we've traditionally used for optimizing our web applications. All of the work we have done to educate product managers and marketers on the appropriate way to run and interpret A/B tests will be like dust in the wind.

In this new world, we will have to develop novel methods for exploring and visualizing comparisons with uneven sample sizes. We will need new and better techniques for making comparisons without falling into the [multiple comparisons trap](https://en.wikipedia.org/wiki/Multiple_comparisons_problem).

## Conclusion

Embracing the true variability in our user base will enable us to provide better experiences to more users which will unlock an extraordinary amount of value. Unfortunately, as with all major shifts in the way we approach building and delivering technologies, these gains will not come cheap. It is a long road between where we are today and this glorious, more personalized future, but I am confident that the journey will be exciting.


[^1]: I am eliding all discussion of confidence intervals and statistical significance for the purpose of simplicity. Sorry.
