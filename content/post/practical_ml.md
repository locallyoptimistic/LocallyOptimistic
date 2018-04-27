---
author: Ilan Man
title: "Practical tips for real-world Data Science"
publishDate: "2018-05-15"
draft: true
tags: 
 - datascience
---

There's a strong bias today in Data Science to follow a checklist of tasks in order to productionalize one's model. First get the data, then clean it, then perform feature engineering before cross validation, model fitting, testing and deployment. While performing each of these steps requires careful consideration and is crucial to a successful model, there are many more real-world considerations that the data scientist must consider. Today we'll take a look at a few of these.

The running example I'll use to illustrate is Paperless Posts' event classifier - captainClassy. In short, this is a classifer that accepts as input a user's event (e.g. birthday greeting card, RSVP wedding invite, etc...) and outputs the classification. Note that Paperless never asks the user what their event is. Also note that we have a trained set of events classified by our Customer Success team, so this is a supervised learning exercise. 

The key question answered by this model is "What kind of events are users sending?" A critical business question, many functions within our organization leverage the output of
this model for their own analysis and hence there are many different business stakeholders to engage with. So let's get into it.

<!--more-->

## Beware the new hotness

The key feature for the model is the text data that a user writes on their card. Current consensus in the industry is that word2vec is the gold standard NLP-based analysis tool. While word2vec yields insightful output, it's not necessarily the best approach. For example, debugging and iterating can be slow since the model (a shallow Neural Network) isn't extremely transparent. Moreover, we must actually think about what our content is. For example "Please join us in celebrating our
wedding next summer". With content like this, it should be immediately obvious that keywords will be strongly correlated with the event's category. As a result, this exercise is less interested in sentiment analysis or topic modeling, and more interested in classification. We don't need to employ the full machinery of word2vec or other modern NLP methods. Instead, we can identify that our problem can best be formed as a term-document frequency matrix, e.g. Bag-of-Words. In this model,
keywords that are strongly correlated with a topic perform best. We can easily apply a layer of TFIDF to remove importance of words such as "happy" and "congrats".

In addition, explaining this type of model to the business is simple because it's intuitive - always a benefit. And finally, BoW is notoriously fast to train, test and iterate, and you can apply your favorite machine learning algorithm to get the best precision/recall metrics.

## Decisions, decisions

We all naturally want more data, more information. However the Data Scientist must be discerning with how she presents her analysis and what she expects the stakeholder to do with that information.

CaptainClassy outputs a best estimate classification for each event that a user creates. However, we know that any reasonable algorithm doesn't output classes, but instead probabilities of belonging to a class. We implicitly apply a decision function which makes the classification, e.g. if P(event = 'birthday') > 0.5 then class = 'birthday'. Most Data Scientists will naturally want more than simply a best estimate. Perhaps the highest classification score is 0.3 while the second
highest is 0.26. How confident is the best estimate in this case? Perhaps we should output the top 3 estimates and let the stakeholder decide. And what happens when the model outputs two equally likely classifications - e.g. a kids birthday party that is halloween themed - do we output halloween or kids_birthday? 

The reconcile, we have to remember that the ultimate goal is to empower the business to make the best data-informed decision possible. To that end, providing 3 or 4 best estimates and asking the stakeholder to figure it out is suboptimal. **If they can't make a decision with your output, then your job isn't complete**. 

Finally, you must understand how the business will use the model's output. For example, if we're excellent at classifying birthdays and are less interested in knowing about
birthday events, then perhaps it's better to classify the above halloween theme party as halloween. It's more useful for the business to have that information.

## Listen to your surroundings

Ideally you work in an organization with business stakeholders, data engineers and analysts. Each member plays an important role in the model building and deployment process

### Business Stakeholders

Stakeholders understand the product, have the context and know what is coming down the pike. Use them. When building captainClassy, I ignored the fact that our cards live in "collections", e.g. St. Patty's Day collection, Thanksgiving collection, etc... It was only after a stakeholder mentioned this that I included it at a feature in the model, which helped tremendously. Of course, it's not enough to simply apply a heuristic such as "if Thanksgiving collection then event =
'thanksgiving' because there are plenty of customers who like our Thanksgiving Day cards for other events. But it's a strong correlate.

Another example: Our Customer Insights team informed me on how the trained classifications were agreed on. Understanding biases and the thought process behind the classifications was also very helpful in improving the model.

### Data Analysts

In general, data analysts are closer to the business than the Data Scientist. The analyst ideally understands the logical data model better and should be used to peer review queries. You should also leverage their knowledge of existing queries (e.g. materialized_views) so that you don't duplicate work. Or worse - your query doesn't yield the same results as theirs, and it's likely their query that powers Operating reports. Before presenting your conclusions to the business, you can be sure
that they'll perform the necessary sniff test to ensure that your output comform with their expectations. For example, you'll want to avoid the following scenario:

Data Scientist - "You'll be glad to know that yesterday we had 1000 birthdays and 1000 wedding invitations sent. 2000 total events!"
Business Stakeholder - "That's great...but according to our daily operating report, we had 3500 events sent yesterday."

Leverage your analysts.

### Data Engineers

If you're lucky enough to work with Data Engineers, then you should certainly take advantage of their skills. For example, their code will likely be higher quality than yours, they'll have a better understanding of logging and testing than you likely do, they can help ensure you don't lock tables or exceed memory usage. And since in general data products should be prefered to data insights, Data Engineers will help productionalize your model and integrate with the existing development
environment.

# Conclusion

In order to successfully deploy Data products, one must cross your t's and dot your i's. This includes following industry best practices, being scientifically honest in your work and understand bias in your data and assumptions that your model makes. But in addition to the generic model building process, there are real world considerations that the Data practitioner needs to account for. Considerations such as which modeling choices best suit your specific problem, understanding how the business will use your model, and recognizing that your team can add a lot of value. If you pay mind to this, then you will be setting yourself up for success.
