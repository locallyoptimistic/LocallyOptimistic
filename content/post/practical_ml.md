---
author: Ilan Man
title: "Practical tips for real-world Data Science"
publishDate: "2018-05-15"
draft: true
tags: 
 - datascience
---

Many Data Scientists today come from a hard science background - computer science, statistics, math, etc... Hard sciences tend to emphasize objective truths: A correct answer exists and we must strive to find it, or at least, get as close as possible. While not a controversial statement in itself, many years of studying and application of such a mantra can collide with the realities of the Business world. In the real world, formulas and assumptions rarely hold and the practitioner should understand how to adjust their model and
their approach accordingly. In this post we'll discuss a few considerations that the Data Scientist should note during the model building and deployment process.

An illustrative running example is the following model:
<ul>
<li>Imagine you work for an events platform in which a user can send an event (e.g. "happy birthday" or "please join us at our wedding") to their guests. 
<li>You're tasked with building a classifier that, given a set of trained classifications, can accurately classify future user' cards
<li>You cannot ask the user what their event is for :)
</ul>

The key question answered by this model is "What kind of events are our users sending?" If you work in the events space, you can imagine that answering this question is critical for the Business. Marketing can better target ads, Strategy understands where there are holes in the marketplace (e.g. What if 95% of users sent Christmas cards only?) and Business Development can identify partnership opportunities. 

<!--more-->

## Beware the new hotness

The key feature for the model is the text data that a user writes on their card. Current consensus in the Data Science industry is that [word2vec](http://nlp.town/blog/anything2vec/) is the gold standard for NLP-based analysis. While word2vec yields insightful output, it's not necessarily the best approach in all situations. For example, debugging and iterating can be slow since the underlying model (a [shallow Neural Network](https://en.wikipedia.org/wiki/Word2vec) isn't extremely transparent. Moreover, you must ask yourself if you really need to employ its full machinery to solve your problem. Take, for example, an event with this text: "Please join us in celebrating our
wedding next summer". With content like this, it should be immediately obvious that an event's keywords will be strongly (positively) correlated with the event's category. As a result, this type of task is less interested in sentiment analysis or topic modeling, and more interested in classification. 

Considering what we know about the nature of our event text, we may recognize that our problem can best be formulated as a term-document frequency matrix, e.g. [Bag-of-Words](https://en.wikipedia.org/wiki/Bag-of-words_model). This type of representation takes advantage of the correlation between specific words and the document category. We can then apply [tf-idf](https://en.wikipedia.org/wiki/Tf%E2%80%93idf) to down weight words such as "happy" and "congrats".

The combination of BoW and tf-idf is fast to train, test and iterate. Finally, BoW has the added benefit of being intuitive and easily explanable for your busines stakeholders. explaining this type of model to the Business is simple because it's intuitive - always a benefit.

So resist the urge to apply the latest and greatest, and instead take time to identify what the problem you're solving is and what other options there might be. Just because Google does it doesn't make it right.

## Data Decisions

We all naturally want more data, more information. However the Data Scientist must be discerning with how she presents her analysis and what she expects the stakeholder to do with that information.

Our classification algorithm, like most, outputs a probability of belonging to a certain class. We then apply a decision function, e.g. if P(event = 'birthday') > 0.5 then class = 'birthday'. While understanding this decision function is important for the Business, what's more important is understanding the output of the model. They may or may not care what the highest probability class is. They may need to count the number of birthdays, weddings, etc... and including probabilities or
prediction intervals around your estimates may just cause confusion. 

You as the Data Scientist may think its important to know which event came in second or third place. For example, what happens if an event is scored as 'birthday' with 50% probability and 'halloween' with 50% probability. It's likely to be a halloween-themed birthday party. In this case, its arguable that best classification is the one which is most useful to the Business. If there is a push to understand seasonal holidays then adding to the pool of seasonal holidays (i.e.
classifying as halloween) could be more valuable than birthday.  

It's important to understand what the Business will do with the output of your model. Remember that your ultimate goal is to empower the Business to make the best data-informed decision possible. To that end, providing 3 or 4 best estimates and asking the stakeholder to figure it out is suboptimal. **If they can't make a decision with your output, then your job isn't complete**. 

## Listen to your surroundings

Ideally you work in an organization with Business stakeholders, data engineers and analysts. Each member plays an important role in the model building and deployment process.

### Business Stakeholders

Stakeholders understand the product, have the context and know what is coming down the pike. Use them. When building your classification algorithm, what features other than text can be used? There may be obvious ones such as 'date sent'. But there's a strong chance that product managers know the product much better than you. Specifically, they will like know how users engage with the product. In this way, they will be able to qualitatively tell you about differences in, say, those looking for wedding cards and those looking for Mother's Day cards. 

Other Business stakeholders will have more context than you. they will know historically which data you shouldn't trust or may have a bias. For example, a specific marketing campaign could have attracted certain types of users. Once that campaign is turned off, there's a good chance those types of users won't be returning. That introduces bias in your model unless you account for it. But gleaning that from a raw database could be difficult.

### Data Analysts

In general, Data Analysts are closer to the Business than the Data Scientist. The analyst ideally has a better understanding of the logical data model should therefore peer review queries. You should also leverage their knowledge of existing queries (e.g. `materialized_views`) so that you don't duplicate work. Worse yet - your query doesn't yield the same expected result as theirs, and it is likely their query that powers Operating reports. Before presenting your conclusions to the Business, you can be sure
that they will perform the necessary sniff test to check that your output comform with their expectations. Avoid the following scenario:

Data Scientist - "You will be glad to know that yesterday we had 1000 birthdays and 1000 wedding invitations sent. 2000 total events!"
Business Stakeholder - "That's great...but according to our daily Operating report, we had 3500 events sent yesterday."

Leverage your analysts. Don't make obvious mistakes.

### Data Engineers

If you're lucky enough to work with Data Engineers, then you should certainly take advantage of their skills. Their code will likely be higher quality than yours, they will have a better understanding of logging and testing than you likely do, they can help ensure you don't lock tables or exceed memory usage. And since in general [data products](https://www.svds.com/how-do-you-build-a-data-product/) should be prefered to data insights, Data Engineers will help productionalize your model and integrate it with the existing development
environment.

# Conclusion

In order to successfully deploy your model, you must cross your t's and dot your i's. This includes following industry best practices, being scientifically honest in your work and understand bias in your data and assumptions in your model. In addition to the generic model building process, there are real world considerations that the Data practitioner needs to account for. Considerations such as which modeling choices best suit your specific problem, understanding how the Business will use your model, and recognizing that your team can add a lot of value. If you pay mind to this, then you will be setting yourself up for success.
