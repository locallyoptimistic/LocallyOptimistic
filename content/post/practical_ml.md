---
author: Ilan Man
title: "Practical Tips for Real-World Data Science"
cover: "/img/practical_ml.jpg"
publishDate: "2018-05-13"
draft: false
tags: 
 - datascience
---

Many Data Scientists come from a hard science background - statistics, math, physics. Hard sciences have a bias towards empirical and objective truths: a correct answer exists and we can find it by employing the scientific method, usually manifested by a formulaic approach to solving the problem at hand. While not a controversial statement in itself, many years of studying and application of such a paradigm can collide with the practical realities of the business world. In that world, it becomes increasingly difficult to perfectly apply the theory. As a result, the practitioner should understand how to adjust their model and their approach accordingly.
<!--more-->

In this post we'll discuss three themes that the Data Scientist can use to deliver high-value data products to the business:

<ul>
<li>Beware the new hotness</li>
<li>Understand the business needs</li>
<li>Listen to your surroundings</li>
</ul>

As a running example to help illustrate this:

<ul>
<li>Imagine we work for an events platform in which a user can send an event (e.g., "happy birthday" or "please join us for cocktail hour") to their guests using our product, a web application</li>
<li>We are tasked with building a classifier that, given a set of trained examples, can accurately classify a given event</li>
<li>We cannot ask the user questions about the purposes of their event :)</li>
</ul>

## Beware the new hotness

The key feature for the model is the text that a user writes on their card. Current consensus in the Data Science industry is that [word2vec](http://nlp.town/blog/anything2vec/) is the gold standard for NLP-based analysis. While word2vec yields insightful output, it is not necessarily the best approach in all situations. For example, debugging and iterating can be slow since the underlying model (a [shallow Neural Network](https://en.wikipedia.org/wiki/Word2vec)) is not extremely transparent. Moreover, we must ask ourselves if we really need to employ its full machinery to solve our problem. 

Take, for example, an event with this text: `Please join us in celebrating our wedding next summer`. With content like this, it should be immediately obvious that an event's keywords will be strongly (positively) correlated with the event's category. As a result, this type of Machine Learning task is less oriented towards sentiment analysis or topic modeling (the domain of word2vec) and more oriented towards classification.

Considering what we know about the nature of our event text, we may recognize that our problem can best be formulated as a term-document frequency matrix, e.g., [Bag-of-Words](https://en.wikipedia.org/wiki/Bag-of-words_model). This type of representation takes advantage of the correlation between specific words and the document category. We can then apply [tf-idf](https://en.wikipedia.org/wiki/Tf%E2%80%93idf) to down weight words such as `happy` and `congrats` to emphasize our most important words.

The combination of BoW and tf-idf is fast to train, test and iterate. Finally, BoW has the added benefit of being intuitive and easily explainable for our business stakeholders.

Resist the urge to apply the latest and greatest, and instead take time to identify the problem and what other options there might be. Just because Google does it, doesn't make it right.

## Understand the business

We all naturally want more data, more information. However the Data Scientist must be discerning with how she presents her analysis and what she expects the stakeholder to do with that information.

Our classification algorithm, like most, outputs a probability of belonging to a certain class. We then apply a decision function on top, e.g., `if P(event = 'birthday') > 0.5 then class = 'birthday'`. While understanding this decision function is important for the business, what is more important is understanding the output of the model. Business stakeholders may or may not care what the probability associated with the best estimate is, just so long as they have a data point that is useful. They may need to count the number of birthdays or weddings. They may need to understand year-over-year growth in a specific category. Including probabilities or prediction intervals around our estimates may just cause confusion.

The Data Scientist may think it is important to know which event came in second or third place. Take, for example, the case when an event is scored as `birthday` with 50% probability and `halloween` with 50% probability. It is likely to be a Halloween-themed birthday party. In this case, it is arguable that the best classification is the one which is most useful to the business. If there is a push to understand seasonal holidays, then adding to the pool of seasonal holidays (i.e., classifying as Halloween) could be more valuable than adding to the pool of birthday parties.

It is important to understand what the business will do with the output of our model. Remember that our ultimate goal is to empower the business to make the best data-informed decision possible. To that end, providing 3 or 4 best estimates and asking the stakeholder to figure it out is suboptimal. **If they can't make a decision with our output, then our job isn't complete**.


## Listen to your surroundings

Ideally you work in an organization with business stakeholders, Data Engineers and Analysts. Each function plays an important role in the model building and deployment process.

### Business Stakeholders

Stakeholders understand the product, have the context and know what is coming down the pike. Use them. When building our classification algorithm, what features other than text can be used? There may be obvious ones such as `date sent`. But there is a strong chance that product managers know the product much better than we do. Specifically, they will have a good sense for how users engage with the product. In this way, they will be able to qualitatively tell us about differences in users who look for wedding cards and those who look for Mother's Day cards. Discussions with Product Managers will greatly improve your feature engineering.

Other stakeholders will have more business context than us. Presumably the business has been making decisions related to event classification before we began our project. As part of the model evaluation process, it is instructive to understand how the business currently thinks about event classification and how their thinking may change once the model is deployed.  

Business stakeholders will also know historically which data we should not trust or may have a bias. For example, a specific marketing campaign could have attracted certain types of users. Once that campaign is turned off, there is a good chance those types of users will not be returning. That introduces bias in our model unless we account for it. But gleaning that from a raw database could be difficult. Anomalous data exists in many data bases and understanding what data should be accounted
for in the model and what data is erroneous can save the Data Scientist a lot of time in the model building process.

### Data Analysts

In general, Data Analysts are closer to the business than Data Scientists. The analyst has a better understanding of the logical data model and should therefore peer review queries. We should also leverage their knowledge of existing queries (e.g., materialized_views) so that we don't duplicate work. 

Worse yet - imagine our query doesn't yield the same expected result as the Analysts' even though it is likely their query that powers operating reports. Before presenting our conclusions to the business, we can be sure that the stakeholder will perform the necessary sniff test to check that our output conforms to their expectations. Avoid the following scenario:

>Data Scientist: You will be glad to know that yesterday we had 1000 birthdays and 1000 wedding invitations sent. 2000 total events! 
>
>Business Stakeholder: That's great...but according to our daily operating report, we had 3500 events sent yesterday.

Leverage your analysts. Don't make obvious mistakes.

### Data Engineers

If you are lucky enough to work with Data Engineers, then you should certainly take advantage of their skills. Their code will likely be higher quality, they will have a better understanding of logging and testing, they can help ensure we don't lock tables or exceed memory usage. And since in general [data products](https://www.svds.com/how-do-you-build-a-data-product/) should be preferred to data insights, Data Engineers will help productionalize our model and integrate it with the existing development environment.

# Conclusion

In order to successfully deploy our model, we must cross our t's and dot our i's. This includes following industry best practices, being scientifically honest in our work, understanding bias in our data and challenging the businesses assumptions throughout. In addition to the generic model building playbook, there are real world considerations that the Data Scientist needs to account for. 

Considerations such as which modeling choices best suit our specific problem, understanding how the business will use our model, and recognizing that our team can add a lot of value. If we orient our work in this way, then we will be able to blend our hard science knowledge with the hard realties of the business world in the most optimal way possible.
