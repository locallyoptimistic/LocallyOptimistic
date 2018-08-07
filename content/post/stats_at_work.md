---
title: "A chat about A/B testing"
author: "Ilan Man"
cover: "/img/cover.jpg"
tags: ["statistics", "ab_testing"]
date: 2018-07-26T20:35:46-04:00
draft: true
---

The following dialogue is taking place between a data scientist (DS) and a marketing analyst (MA).

DS: The results are in...A is the winner!  
MA: That's great - we all had a hunch that A would be better, but glad we tested it to be 100% sure.

DS: Great. See you next time.  
MA: Hang on a second. While I have you I had a quick question. This might sound dumb, but how do you know that A is actually better than B? I mean, after a few days I saw that A's average conversion rate was a bit higher than B's. I could've told you that A was better. Why did we have to run a test?

<!--more-->

DS: Right. But how do you know that B wouldn't have caught up to A eventually?  
MA: Sure but what are the chances of that?

DS: Yeah good question. We run tests to be able to answer questions like that - "What are the chances that even though A is currently better than B, that this trend continues"?  
MA: I see. And how exactly do we answer that?

DS: Well, we usually measure how confident we are that A is better than B using something called the p-va-  
MA: Yeah p-value. I know about that. If the p-value is less than 5% then the test is significant otherwise it's not.

DS: Yeah more or less.  
MA: OK. And I know that the p-value is not the probability of A being better than B. It's something else...but what is it exactly?

DS: The exact definition of the p-value is not super helpful, but it basically quantifies the probability of seeing what we saw - namely that A is better than B - if in fact A was the same as B! In other words, if A and B were equal, then how unlikely was our result?   
MA: So a small p-value means that if A and B were equal, then our result would be highly unlikely. And this leads us to conclude that the result of the test can be trusted? It's accurate?

DS: Kinda yeah. To be clear, there are different ways to quantify this kind of stuff. This type of analysis, called hypothesis testing, is the most common one used by the vast majority of scientists.   
MA: Okay. So at the end of the test, you calculate the p-value and saw that it was under 5%. 

DS: Right.  
MA: A's overall conversion rate was 21% and B's 20.1%. So we're confident that A is bigger than B, cause we got a p-value less than 5%. But what if A's conversion rate was 20.2% instead? Or 25%? Don't we care about how much bigger A is?

DS: Absolutely. There's some difference between A and B that we care about - say it's 0.5%. This is called the effect size. If the difference between A and B is less than 0.5%, then we say they're effectively equal. The p-value calculation takes this into account.   
MA: Oh cool - so there's a link between p-value and effect size.

DS: Yup. And the sample size.  
MA: Right that was the next thing I was curious about. How did you know what the right sample size was?

DS: Yeah, so that's all about figuring out how many users we needed to be confident in our conclusion.  
MA: Is that the confidence interval?

DS: Sort of. It's related. The confidence interval is more about telling us the interval around our estimate. Remember, we're estimating the difference between A's conversion rate and B's conversion rate.  
MA: How does sample size fit in? Is there a formula for that?

DS: It's all one formula actually! Given a significance threshold, an effect size and a power level, I can calcu-  
MA: Wait what's power?

DS: Oh sorry. Power is a term that's often overlooked because it's usually baked into the calculations. Power is sometimes used in place of sample size because they are very much linked, even though they are different concepts. Let's take a step back. Recall there are two things we want to check for in this A/B test. First, that A is truly bigger than B by at least the amount we care about (the effect size). Second, we want to be confident in our conclusion.  
MA: And that we have a big enough sample size. 

DS: Yeah - confidence in our estimate and sample size are effectively the same thing. Power is just another way to measure the confidence in our p-value calculation. When I have a small sample, the p-value that I calculate might not be very reliable. You can imagine that the error bars around my p-value estimate are very wide.  
MA: Kind of like how a confidence interval around our estimate can be wide if our sample is small? I'm assuming if the sample is large our confident interval is narrow? 

DS: Precisely.  
MA: Cool. Power and sample size and confidence in our estimate are all related. But what sample size are we aiming for? Like what's the "5% significance level" equivalent for sample size?

DS: Well, that varies. You're right, we set our significance threshold to 5%. We also set our desired effect size to 0.5%. Now the question is - how many data points do we need to be confident that our conclusion can be trusted. But let me ask you - how do we quantify "trust level"?  
MA: I don't know. 95%?

DS: Yeah that's tempting cause we chose 95% for the confidence level (which results in a 5% significance threshold level) to determine if the p-value is significant or not. Let's flip the "trust level" question. Let's consider what our trust level would be with 10 users.  
MA: Hmm...probably small.

DS: Right - small sample, small trust level. Well actually it's called power. Small sample, low power. High sample, high power. Sometimes you may read that a test with a large sample size has a lot of power to detect differences when they actually exist.  
MA: Okay. So we want high power tests.

DS: Yeah that's a nice property of course.  
MA: In that case, is the idea to set up the test such that we have a power level of 95%, a confidence level of 95% and an effect size of 0.5%? 

DS: We could, but a power level of 95% is unusually high. The number of sample points we'd need increases very quickly.  
MA: So how do you pick the power level?

DS: Honestly, we usually use formulas that hold power at about 80%. Back in the day some smart people figured that making a false positive error was 4 times worse than making a false negative error. So if we agree that a 5% significance is a good false positive rate to protect against, then 20% is a good false negative rate. And 1 minus this number, which is 80%, is our power.  
MA: Oh, so it's kind of made up.

DS: Yeah. So is the 5% significance level. But it works surprisingly well in helping us make decisions.  
MA: Yeah, or so we think.

DS: I mean, no test is perfect. I think about A/B tests as a good signal that we're trending in the right direction, but not as the unquestionable truth. There are a ton of assumptions buried in hypothesis testing, in the calculations, in the theory, in the interpretation. There are a bunch of formulas to calculate power and significance depending on the type of input and the type of output. Then there's the whole Bayesian interpretation of testing which sort of throws p-values out the window.   
MA: Ugh.

DS: Right. Hopefully the A/B test results align with our business intuition. And if it doesn't, its important we interrogate both the test and our intuition.  
MA: Yeah, you always say that we shouldn't blindly optimize for the test output, but instead think about things holistically.

DS: Exactly - that's the most important lesson. A/B testing is just a useful tool in our toolbox helping us to make better decisions.  



