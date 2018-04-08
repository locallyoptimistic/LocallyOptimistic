---
author: Michael Kaminsky
title: "Investing in the Data Platform"
publishDate: "2018-04-08"
tags: 
 - analytics
 - data engineering
 - strategy
 - machine learning
---

Data warehouses are not just for business intelligence (BI) anymore. You can maximize the value of your data engineering, data science, and analytics work by investing in building out a multi-use data-platform that serves business users, Analysts, Statisticians, and intelligent applications.

In my last post, [data-dies-in-darkness](content/post/data-dies-in-darkness.md), I described how you can improve your organization's data quality by exposing more data to more people. You can stretch this idea even farther by expanding the stakeholders of your data warehouse to include intelligent applications. 

By "intelligent applications" I am referring to data products that use statistical algorithms to automate or assist making complex decisions. This may include powering a segmentation algorithm that identifies which customers to send an email to, a product-recommendation pipeline, or an application for automatically handling and replying to customer-experience tickets. 

The basic idea of the "data platform" is this:

* Your data warehouse should be the data *source* for model training and prediction-making
* Your data warehouse should be the data *repository* for predictions that are made
* Your intelligent applications should access the warehouse and make use of the central store of predictions in whatever way makes the most sense

There are a number of pros and cons to approaching your data infrastructure this way. I will start with the pros and then discuss some of the cons at the end of this post.

## Good Reasons to Invest in the Central Data Platform

* De-risk ML applications by taking advantage of [ongoing data quality improvements](content/post/data-dies-in-darkness.md).
* Reduce application-management overhead for data scientists

### De-risk ML applications
Every good Data Scientist working on production data products has the same persistent nightmare that will jolt them out of bed in the middle of the night, the question ringing out "dear lord .   

Every good Data Scientist working on production data products has encountered the following nightmarish question at least once: "what if my model is not actually predicting what I think it is predicting?" This is a good fear to have because it is the most common way that good AI projects go bad.

One reason this is so common is that, generally, the bulk of the work that goes
into a new data product involves assembling and cleaning the requisite data to feed to a model. The modeling piece of the project generally
requires about 6 lines of code that start with `from scikit learn import`. The
preponderance of blog posts to the contrary, most of the work in the project
will not involve machine learning, but rather "data munging", outcome definition, sample selection, and feature generation.  

Unfortunately, it is really easy to screw this up and, due to ["data drift"](https://streamsets.com/reports/data-drift/), it is even easier to let your model slowly and nefariously get out of sync from what the data really mean. When this happens, your model is no longer predicting what you think it is predicting, and performance slowly degrades. In the worst case scenario, you never realize that performance is degrading because your measures for monitoring the model performance have drifted as well!

If you build your models on top of your data warehouse, you can take advantage of all of the data cleaning and munging you have done to support the business. Even better, you can train your models against the KPIs that the business *actually uses*.

This not only speeds up development (Data Scientists spend less time munging and more time modeling), but it makes your intelligent applications more robust because you are taking advantage of the data quality flywheel you have already built. 

### Reduce application-management overhead

Many intelligent products have a very simple and similar structure at their core (at least, for the "intelligent" component). All of these applications want to extract data from a source, apply some model to the data to get predictions, and then store those predictions somewhere. (Some applications may also include a model-refitting component as well.)

This process can be naturally abstracted and fits well within the data-warehouse-as-platform model I have described. Rather than having Data Scientists attempt to write and manage their own one-off applications for each of the intelligent applications you build, you can have your Engineering team build an abstract "intelligent jobs" platform that can handle extracting data from the warehouse, applying some arbitrary model, and then writing results back into the warehouse (which can then be used by any other application.) 

In this way you can maximize the time your data scientists spend building high-quality models and minimize the time they spend trying to corral AWS configurations.  


## Risks Of Building the Central Platform

* Increased operational requirements
* Difficult to support real-time or on-line learning applications

### Operational requirements

This is the most important and scariest concern. In this model, ETL failures have gone from an inconvenient annoyance for business users to generating meaningfully degraded service for your customers. If you don't yet have a mature tool for writing, managing, and monitoring ETL then you do not (yet) want to pursue this "data platform" path. 

The question you need to access yourself is: how seriously do we want to take our data products? If intelligent tools and systems are fundamental to your business and provide a meaningful competitive advantage, then you should be taking your ETL and model building extremely seriously anyway!

If intelligent tools and systems *aren't* fundamental to your business or your competitive advantage then I'd at least advise you to be careful: there's a competitor coming up behind you that is very excited to eat your lunch with their operational efficiencies and better, more personalized customer experience.

### Real-time concerns

Occasionally, when I am describing this model, people will raise the concern that since their data warehouse is not real-time (e.g., because they only do a nightly ETL job) they can't support their real-time customer-facing ML applications.

For the most part, I think this is not even a real concern and can be solved with either simple product compromises or hybrid off-line and on-line learning approaches.

Many intelligent applications simply do not need anything resembling real-time data. For example, if you are using your data warehouse to power a customer segmentation engine that determines if a subscription customer is likely to churn or not, your predictions probably are not going to vary widely from day-to-day anyway. In this case, you can always ask yourself (and even empirically quantify!) how big of a difference a 24-hour lag could make -- if it is only affecting <1% of your population anyway, why are you worried about it?

If you really do believe that it is important to capture up-to-the-minute data for your application, then I would still advise decomposing the problem into portions that can be managed "offline" from those that require real-time intervention. You can imagine a rule as simple as "over-ride the prediction if the customer clicks this button after opening this email" -- this can give you the "flavor" of real-time applications while still getting you the benefit of the data platform approach.

# Conclusion

For most companies, I strongly believe that investing in a central data platform to power BI, statistical research, *and* intelligent applications will provide mutually-reinforcing benefits over the long run.

By taking advantage of the data quality flywheel you have already built, the ETL monitoring and management you're doing anyway, and the abstracted tooling for managing data science jobs, you can build better and more reliable data products to power your business.
