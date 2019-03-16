---
title: "Philosophical musings and applications"
author: "Ilan"
cover: "/img/cover.jpg"
tags: ["tagA", "tagB"]
date: 2019-02-08T11:20:42-05:00
draft: true
---

Most technical leaders have been trained academically in the hard sciences and they may view humanities and philosophy with skepticism. Surely there is nothing practical to be found in domains that lack formal rigor like mathematics or testability like physics. Indeed, some may think that ideas about knowledge and consciousness are of little benefit a Data professional. In fact, I believe the overlap between certain branches of philosophy and Data science/analytics are manifold. What's more, when you start delving into this stuff, you'll start to see it everywhere in your daily life.
 
<!--more-->

Below I outline a few broad concepts in philosophy that every Data professional should be familiar with. These concepts include:

- Empiricism and inductivism 
- Instrumentalism and Idealism
- Fallibilism and Justified true belief

These topics are extremely complex, hotly debated and I certainly do not intend to cover them exhaustively. My hope is that I can convey why these topics should be of interest to you, and provide some vocabulary to make it easier for you to do further reading.

## Empiricism, inductivism and justified true belief

We often derive knowledge from data. That’s known as empiricism. We tend to think that “being empirical” is a virtue. Why, surely the data that we observe must inform our beliefs. But what happens when you flip a coin twice and it comes up heads both times? Does that mean the coin must always land heads? Based solely on our observations, we have no reason to believe otherwise. But that’s clearly an insufficient basis on which to derive our knowledge about the coin.

To ground empiricism slightly, Francis Bacon (insert link) devised of a method of learning called inductive reasoning (insert link). This is based on the premise that we should establish a hypothesis and use observations to prove or disprove it. Sound familiar? Classical statistics is largely based on this framework. In fact, this is roughly the scientific method.

Inductivism, however, also falls short of being a great model for deriving knowledge because it relies on a notion of a “Principle of Inductivism” (insert link) that essentially nature repeats itself. And while that feels trivially true in some cases (e.g., the daily rising sun, throwing a ball and seeing it fall, pain from stubbing your toe, etc...) it also leaves us wanting. 

Some ardent hyper-rationalists (my coinage) like, e.g. David Deutsch (insert link to book) may argue that inductivism lacks a good explanation. These folks will grant that the sun rises every day and always has as long as the Earth has been around. But that doesn’t *explain* why the mechanisms underlying it. It’s only useful for predicting that it will happen again. Therefore it's practically reliable, but falls short of an actual explanation and therefore we can't necessarily say that we "know" that the sun will rise every day. Another example of where purely inductive reasoning fails is during magic tricks. A magician can reliably convince you that her tricks defy our physical laws (e.g., levitation, sawing in half, ...). However just because you are fooled doesn't make it real. Another example - ancient myths about the seasons (insert links to Greek and Norse myths). Before we understood the Earth's rotation around the sun, we made up stories that "explained" the seasons. But certainly these explanations were inaccurate. What inductivism elides is a good explanation and good explanations are the basis for deriving knowledge about the universe.

Have you ever worked with a black box model that is in equal parts extremely accurate and extremely opaque? A hyper-rationalist would argue that you don’t have a good explanation for your model, even though it makes great predictions. And while that may be sufficient for your particular use case, it’s conceivable that down the road this may come back to haunt you (insert example where this occurred in the past). In order to advance as a species and make the infinite progress that some believe we are (in principle) capable of, we must aim for good explanations and eschew the false promises of good predictions. 

(To be clear, I think good predictions are great and in the name of iteration and making practical progress, we don’t need to understand everything to the utmost degree. But there is something to be said for actually knowing what you’re doing.)

## Instrumentalism, good predictions and our ability to know anything real

What does it mean to know something? There are some who feel that since all of our knowledge is theory-laden (insert link to Popper), we don’t actually ever experience anything as it really is. For example, when you look at the stars in the sky, do you see the actual stars? Or do you see bright images against a dark background, which are filtered through space and our atmosphere, and then again filtered through your glasses or eyeballs, which are further filtered through the neurons in your brain and which ultimately make up an object that we roughly agree is a star? Are we all seeing the same thing or just an image of that thing?

Many philosophers believe that we don’t ever actually subjectively experience anything for what it is (insert Dennett link). So I come back to the original question: what does it mean to know or understand anything? Sure I can “understand” that I have a linear regression with a number of variables and weights associated with each variable, and given a set of weights and inputs I can with 100% certainty, deterministically reproduce a corresponding Y. Does that mean I understand the relationship between X and Y? 

I think yes. Mostly to be practical, but also because absolute knowledge in this sense seems infinitely out of reach and therefore, while an interesting thought experiment, should not block us from making useful claims about the world. It's useful, however, to be aware of the distinction of what knowledge is and what we think we know.

## Fallibilism

I recently came across the term “fallibilism” which, unsurprisingly, is a part humble, part skeptical way of reasoning. This is a notion that our explanations for the universe are all inherently wrong. We never actually know anything in the absolute sense -- our knowledge can only ever asymptotically approach the objective reality that we're trying to explain. While this may strike someone as trivially true, we aren't always explicit about it in our language. For example, before Newton, we had an explanation for gravity. Then after Newton we had another one which was very different. After Einstein our understanding of gravity changed again. In each case, we’re approaching an explanation that resemble an objective truth about gravity, but must also acknowledge the fact that we’re wrong (in a binary, we know/we don't know sense) and trying to get better solutions via better explanations.

This means that even though you may be working with a black box model that outputs 95% accuracy every time, the story isn't over if you're trying to derive better knowledge about what your block box is doing. Like our knowledge of gravity continues to get refined, your knowledge about the black box may also get refined. This is closely related to the idea of generalizability of your model. You should always remain skeptical of your model fit, e.g., did you test various out-of-sample observations? What is the distribution of your inputs changes completely from what the model has been trained on? How sensitive is the model to the starting assumptions?

While resource and time constraints may mean that you should stop iterating on your model after 95% accuracy, in the sense of objective knowledge, we don't *know* that our model completely explains the phenomena that we're trying to capture -- simply that we're satisfied with how good it is.

## Conclusion

In addition to being utterly fascinating, studying epistemology can provide some perspective for folks who make strong claims about their confidence in their knowledge. While this shouldn't slow down your real-world model building, hopefully it can inject a small dose of humility.




