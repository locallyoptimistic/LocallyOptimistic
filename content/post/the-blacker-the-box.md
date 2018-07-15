---
author: Michael Kaminsky
title: "The Blacker the Box"
publishDate: "2018-08-05"
tags: 
 - Machine Learning
 - Data Science
 - Statistics
---

There has been a [lot of discussion](https://towardsdatascience.com/machine-learning-how-black-is-this-black-box-f11e4031fdf) in the data science community about the use of black-box models, and there is lots of really [fascinating ongoing](https://arxiv.org/abs/1710.09511) [research](https://storage.googleapis.com/epg-blog-data/epg_2.pdf) into methods, algorithms, [and tools](https://github.com/numeristical/introspective) to help data scientists better introspect their models. While those discussions and that research are important, in this post I will discuss the macro-framework I use for evaluating how black the box can be for a prediction product.

<!--more-->

In this post I will not be getting into the weeds of complexity penalization algorithms or even how to weigh the [tech debt](https://ai.google/research/pubs/pub43146) associated with additional complexity. Instead, I want to take a step back and discuss how I think about "prediction" problems at a more macro level, and how I value accuracy and complexity for different types of problems.

The thesis of this post is:

**The faster the feedback on prediction accuracy, the blacker the box can be. The slower the feedback, the more your models should be explicit and formal.**

In this post I will talk through some examples of fast feedback problems and what makes them more amenable to black-box prediction algorithms (provided you have the proper infrastructure) as well as slower feedback problems and how one might approach predictions in those situations.

## Fast Feedback

The machine learning community spends the bulk of its time working on and talking about fast feedback problems. Problems with fast feedback are defined by 1) the ability to quickly evaluate the correctness of a prediction[^1] and 2) the ability to play the game near infinite amounts of time[^2]. Some examples of fast feedback problems are:

* Chess: it is easy to verify which player has won or lost. Feedback takes only as long as the length of the game.
* Conversion for an Ad Placement: Feedback to Google or Facebook on whether you clicked a given advertisement, and whether you subsequently converted[^3] is nearly instantaneous.
* Movie Recommendations: For a given list of potential movies to watch, Netflix gets near instantaneous feedback when you do or do not watch some of the content they have elevated for you.

[Tech-debt considerations](https://ai.google/research/pubs/pub43146) aside, for fast-feedback problems the box can be impenetrably black *as long as you have confidence in your ability to accurately measure the prediction.* 

If I am designing an application for optimizing landing-page content for my e-commerce site (i.e., choose the content that converts best), then I do not care if my data scientist has rigged up a prediction pipeline that involves passing a SVM prediction through [an octopus](https://en.wikipedia.org/wiki/Paul_the_Octopus) so long as that model out-performs every other model we have tested in our production environment *and we have confidence that we are measuring performance correctly*.

The key to this scenario is that I am able to quickly and easily evaluate the performance of candidate prediction models and compare the current production model to new candidate models for evaluation. Because I have an *objective* measure of predictive success, I do not need any understanding of what the model is doing under-the-hood in order to make use of it.

## Slow Feedback

Unfortunately, not all of the problems we face as an Analytics team have fast-feedback properties. Very often, we need to make predictions about what will happen over incredibly long time horizons or we need to make one-off decisions that could have large impacts on the future health of our business. Some examples of slow feedback problems are:

* Estimating customer lifetime value
* Predicting customer re-order dates
* Deciding where to open new retail locations
* Attributing marketing spend to actual sales
* Predicting the outcomes of elections[^4]

For these types of problems, a purely black-box prediction model is rarely the best approach. The reason why is that you, as the analyst, probably have more information about the underlying phenomenon than are encoded in the data that model would have access to. 

If you try to apply a deep-net to your LTV data, you will probably get lots of very accurate in-sample predictions, but your chance of over-fitting the model will be very high, and you will have a very limited ability to predict customer LTV beyond the time periods that are represented in your data set.

Predicting customer LTV is a great example of this because 1) you will never actually know the true *lifetime* value of your customers and 2) by the time you learn something, your business has likely changed enough underneath you that your model will not generalize very well. Fortunately, there has been lots of academic research on the topic of LTV modeling (for retail, for non-profit donors, in contractual and non-contractual settings, etc., etc.) so you do not have to start from scratch. LTV models almost always combine three ingredients[^5]:

1. Retention rates
2. Purchase frequency
3. Order values

If you can model how long customers will remain customers, how often they order, and how much they spend, it turns out that you can build consistently good models of LTV. It *also* turns out, that there are lessons you can transfer from other businesses to your own. Retention curves, for every business I have examined, follow the same shape: there is a steep drop-off after acquisition that then flattens out into a steady-state low rate of churn for mature customers. *How steep* the initial drop is and *how long* until the curve begins to flatten out will be unique to your business, but the general pattern will pretty much always hold. 

Because I know that this pattern holds consistently, and I can construct a formal model of how the three LTV ingredients play together, I can build a compelling LTV model that will generalize beyond my data set much better than a black-box model could. And, at the very least, because I am able to reason about my formal model, I can explain to others the situations in which it *won't*  generalize very well, and help other decision-makers in the business take the appropriate amount of caution. The worst-case scenario for a black-box model is that it both fails to generalize and obfuscates that failure until it is too late (and lots of bad decisions have already been made).

## Other Considerations

Savvy readers will note that there are some other important practical considerations for thinking about the requisite amount of transparency for a model:

* Ethical considerations: How can we be sure our model is not [perpetuating social biases](http://www.wired.co.uk/article/machine-learning-bias-prejudice)?
* Human-comfort considerations: If I'm being diagnosed for tumor malignancy, I may not feel comfortable letting an algorithm decide my fate if it cannot explain its decisions.
* Regulatory considerations: for regulatory reasons, it can be important that your model be interpretable and transparent.
* Technical and tech-debt considerations: More complex and less transparent models are more difficult to maintain, and require a much higher operational burden to monitor

While I obviously do not address these considerations in this post, they are definitely important factors for you to think through as you are evaluating competing approaches to your prediction problems.

## In Practice

Remember: all models are wrong, but some models are useful. When you are doing Data Science, make sure you are using the right tool for the job. 

Sometimes it seems like ML practitioners and statisticians are warring tribes who do not understand why the other side uses techniques that are so clearly flawed[^6]. Really, as a discipline, we need to get better at recognizing the pros and cons of different approaches, and applying them judiciously to the problems we face.


[^1]: "Correctness" could be True or False for binary predictions or some other quantification of error for regression-type problems.
[^2]: I.e., it is not a one-shot high-stakes prediction for all-the-marbles.
[^3]: I.e., made a purchase from an e-commerce store, downloaded an application, or performed whatever action the advertisement was trying to get you to take.
[^4]: Nate Silver has made a whole career out of building really thoughtful, formal models that can outperform a pure ML model: https://fivethirtyeight.com/features/how-the-fivethirtyeight-senate-forecast-model-works/
[^5]: Different flavors of these models at varying levels of sophistication will put slightly different spins on these metrics and how the model is fit, but at the most abstract level this pattern seems to hold.
[^6]: I used to be one of these people, on the statistics side, who thought all ML was useless because the techniques did not have explanatory power. It took me a long time to realize that the people using ML *did not care about explanatory power*.
