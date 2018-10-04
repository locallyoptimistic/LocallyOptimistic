author: Sanjay Hariharan
title: Can we trust machine learning?
publishDate: 2018-10-04
tags: 
 - Interpretability
 - Black-Box Models
 - Analytics

# Interpretable AI: Can We Trust Machine Learning?

As Data Science practitioners, we are creating analytical solutions to solve complex business problems. Since our output generally aids in decision making and other business decisions, it is important that these solutions are both interpretable and understandable. Since our methods are built on mathematical models, we will always benefit from increased interpretability to validate and improve our work. However, with the increase of the amount and complexity of our data has also risen the use of powerful black-box, predictive models. In this post, I will discuss techniques such as post-hoc interpretability, LIME, and SHAP, which can be employed to develop intuition behind more powerful predictive algorithms. 

## Why is Interpretability Important?

Consider the case of employing predictive models to use in a patient care setting. There is a lot of work going on to employ Machine Learning to predict real-time complications such as Sepsis, Renal Failure, and infections. Other uses are predicting re-admission rates, cost of the hospital stay, and general diagnosis. On average, simple, interpretable models have lower predictive models than complex, black-box models, with exceptions.

![](/img/perf_vs_int.png)

In this particular case, there are two sides to the same coin, of *interpretability* vs. *performance*. Advocates of performance indicate that an accurate and useful model is prferred to an understandable one, as human decision makers can be biased too. Furthermore, these models could pick up on suble variable shifts more than a human can. On the other side, advocates of interpretability indicate that if we are making clinical decisions, we must be able to explain how and why this decision was made. Patients themselves have a "right to an explanation" as to why a certain course of action was made. Furthermore, sensitive information, such as race, gender, or other variables, may be misused or incorrectly inferred by a black-box algorithm.

## How can we bridge the gap?

### LIME

LIME approximates a black-box model with a local linear model to obtain an *individual/personalized prediction*. An explanation of an individual prediction is a local linear approximation of the models' behavior in the vicinity of that instance. 

![](/img/lime.png)

How does LIME work? Once your classifier is fit and you identify an instance that you want to understand, LIME samples additional data points in the neighborhood around your instance, uses the pre-fit classifier to identify which classes those samples are in, and builds a logistic regression model on all the features to develop a linear approximation to the classification around that data point. The resulting coefficients of the logistic regression add interpretation around why your data point is getting its particular prediction. LIME is completely model agnostic, and has been used with everything from image classification, text classification, and deep learning prediction.

An open-source package to implement LIME can be found here: https://github.com/marcotcr/lime

### Use Case: Clinical Operations

Consider the use case in which we want to predict which hospitals will enroll more patients. We have many features, and find that what drives hospital enrollment is not very simple, and involves many interactions between variables, as each hospital is different. We build a black-box model that far out performs any linear model in terms of predictive accuracy. Our client is very satisfied with our predictive performance, but wants to understand how we can interpret the predictions of this model, without sacrificing any predictive power. Specifically, what drives the **direction** of the predicted enrollment rate? How can we get personalized explanations? Specifically, why Hospital B gets more enrollment than Hospital A?

By applying LIME, we approximate a linear model for both the predictions of Hospital A and B. We recieve coefficeint estimates for our features around the local regions of these predictions.

![](/img/lime_clinical.png)

We can see that Hospital B has a higher predicted enrollment rate by our black box model and our approximate localized linear model. But why? With LIME, we can see that feature G is what contributes to the difference in enrollment rates. An analysis of that feature and how it differs between the two hospitals would help us understand why these enrollment rates are different, while also giving credit to the other positive features, and understanding that the number of trials in a city actually has a strong negative effect across both hospitals.

We did not have to forego any predictive power to extract the interpretability we needed. It is important to note, however, that LIME gives us *local* interpretations, but if *global* interpretations are needed, some trade-off will need to occur.

### SHAP

SHAP values (short for SHapley Additive exPlanations) provides another framework for interpreting model predictions. It is based on Shapley values, a technique used in game theory to determine how much each player in a collaborative game has contributed to its success. In our case, each SHAP value measures how much each feature in our model contributes, either positively or negatively, to a model output. Its main benefits are that (1) it is completely model agnostic, so can be applied to tree based and black-box models and (2) each individual observation will have its own set of SHAP values, resulting in a local interpretation similar to LIME.

![](/img/shap_explanation.png)

The figure above estimates SHAP values for a particular observation, when adding in each covariate one by one. This diagram shows a single ordering, but when a model is non-linear and the features are not independent, the order of the features added to the expectation matters, and the SHAP values arise from averaging the \phi values across all possible orderings.

A package to implement Shap values and the visualizations above is here: https://github.com/slundberg/shap 

### Use Case: Mortality Risk Factors

The NHEFS study was designed to investigate the relationships between clinical, nutritional, and behavioral factors and subsequent morbidity and mortality. This is a classic survival analysis problem, and can be studied through numerous interpretable linear modeling approaches. However, we want to build the most powerful model we can, accounting for non-linear patterns in the data, while also developing an intuition behind what is occurring. As such, a cox proportional hazards model was fit using XgBoost, to allow for more complex relationships between predictors.

Through the package above, we can generate interesting visualizations of these SHAP Values to better understand othe relationships between our features and the output.

![](/img/shap_summary.png)

Here we have an overview of which features are most important for a model. This plot sorts the features by the sum of SHAP value magnitudes over all samples, and uses the values to show the distribution of impacts each feature has on the model output.

How can SHAP values help us understand interaction effects and their effect on the model output? Luckily, this package also supports the creation of dependence plots:

![](/img/shap_dependence.png)

For example, we can see that more years of education is positively correlated with higher SHAP values, and only higher years of education are related to higher values of the capital gain variable. Also, there is a clear positive trend between age and its effect on the outcome, but it flattens out around Age 40, indicating that most of the lift comes from ages 20-40. Furthermore, there is a clear relationship between higher age and higher numbers of education, which is intuitive.

## Conclusion

Explanation of model outputs will drive successful adoption among business users, avoid negative ethical outputs, and enable insight generation. We discussed a few practical methods for interpreting black box models, such as LIME and SHAP. It is a very hot research area, and other methods do exist (L2X, Tree Interpreter, DeepLIFT). The journey to intrerpretable AI has just started, and we have the responsibility to combine the best of both worlds.

