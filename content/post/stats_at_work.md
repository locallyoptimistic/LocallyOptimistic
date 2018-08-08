---
title: "A chat about A/B testing"
author: "Ilan Man"
cover: "/img/cover.jpg"
tags: ["statistics", "ab_testing"]
date: 2018-07-26T20:35:46-04:00
draft: true
---

A hypothetical tech company just completed an A/B test of two experiences, A (the test) and B (the control). The test was set up properly and executed successfully. The following dialogue is taking place between Diane the Data Scientist and Marty the Marketing Analyst at the conclusion of the test.   

Diane: The results are in...the test version, A, is the winner!  
Marty: That's great - we all had a hunch that A would be better than B, but glad we tested it to be 100% sure.

Diane: Great. See you next time.  
Marty: Hang on a second. While I have you I had a quick question. This might sound dumb, but how do you know that A is actually better than B, the control? I mean, after a few days I saw that A's average conversion rate was a bit higher than B's. I could've told you that A was better. Why did we have to run a test?

<!--more-->

Diane: Right. But how do you know that B wouldn't have caught up to A eventually?  
Marty: Sure but what are the chances of that?

Diane: Yeah good question. We run tests to be able to answer questions like that - "What are the chances that even though A is currently better than B, this trend continues"?  
Marty: I see. And how exactly do we answer that?

Diane: Well, we usually measure how confident we are that A is better than B using something called the p-va-  
Marty: Yeah p-value. I know about that. If the p-value is less than 5% then the test is significant otherwise it's not.

Diane: Yeah more or less.  
Marty: Okay. But, uh, honestly I don't know what that means, I just remember reading it over and over again.

Diane: Listen this stuff is very confusing so don't feel bad. The exact definition of the p-value is not super helpful, but it basically quantifies the probability of seeing what we saw - namely that A is better than B - if in fact A was the same as B! In other words, if A and B were equal, then how unlikely was our result?   
Marty: So a small p-value means that if A and B were equal, then our result would be highly unlikely.

Diane: Right. To tie in the 5%, this means that if A and B truly had the same conversion rate, then our test would incorrectly say there was a difference 5% of the time. Imagine running this test 20 times. In one of those 20 tests we might incorrectly say that A is better than B. This is why the p-value is also known as the probability of making a false positive.  
Marty: Okay I think I follow. But what is the true conversion rate?

Diane: Aha! We never actually get to see that. We assume that there is some true, underlying conversion rate that group A converts at. For example, if we let every single user in the world go through experience A, and took the average of all their conversion rates, we'd get this theoretical true conversion rate for A. Of course, we can't do that. We only get a sample of people. But if we get enough people, we hope that our sample closely approximates this true, population conversion rate. 
Marty: Okay. So in your 20 test scenario earlier, we assumed that A and B both have a theoretically equal conversion rate. But since we don't know that for a fact, we run these tests that try to tease that out. And at a 5% significance threshold, we'll incorrectly say that the true rate for A and B are different, 1 out of 20 times. 

Diane: Exactly.  
Marty: Okay, I'm with you so far. P-values are used to tell us if there is a difference. But in this test we actually wanted to see a meaningful difference in the two conversion rates. Do p-values say anything about differences greater than 0%?

Diane: They can. Basically given a significance threshold and a sample size, our test is able to detect some level of difference between A and B. If we have a large enough sample size, then we can detect very small differences. It's kinda like the precision of our test. But this sometimes gives p-values a bad wrap, because you can make almost any test seem significant with enough data. That's why I asked you at the beginning what difference in conversion rate you care about testing for.   
Marty: And we said that we care about differences around 0.5%. 

Diane: Right, so I set up the test to be able to identify a difference of 0.5%. When we collected enough samples, we stopped the test and looked at the result.  
Marty: Which showed that the p-value was less than 5%, and hence a difference existed between A and B.

Diane: Yup.  
Marty: So is there a formula for figuring our the right sample size?

Diane: It's all one formula actually! Given a significance threshold, an effect size and a power level, I can calcu-  
Marty: Wait what's power?

Diane: Oh sorry. Power is a term that's often overlooked because it's usually baked into the calculations. Power is sometimes used in place of sample size because they are very much linked, even though they are different concepts. The power of a test is the probability of detecting a difference when it exists. So power is a good thing. And we manipulate the power using sample size. Bigger sample, more power.  
Marty: With you.

Diane: Recall there are two things we're balancing - our false positive rate and false negative rate. Our significance threshold takes care of the false positive rate. The power is tells us our false negative rate, and this is governed in part by our sample size.  
Marty: Cool. So having a powerful test ensures that we can detect a difference at least as large as our desired effect size, with 95% confidence. But what sample size are we aiming for? Like what's the "5% significance level" equivalent for sample size?

Diane: Well, that varies. You're right, we set our significance threshold to 5%. We also set our desired effect size, aka the minimum detectable difference, to be 0.5%. So the question is simply: what is the minimum number of samples we need to detect that difference. That's our sample size. And in the formula, it turns out that the power level associated with that sample size is roughly 80%. Of course, if we collected more samples, our power would increase. But we're often content with 80%.  
Marty: What? 80%? Why are we happy with that?

Diane: Honestly, it's sort of an artifact of how things have always been done. Back in the day some smart people figured that making a false positive error was 4 times worse than making a false negative error. So if we agree that a 5% significance is a good false positive rate to protect against, then 20% is a good false negative rate. And 1 minus this number, which is 80%, is our power.   
Marty: Oh, so it's kind of made up.

Diane: Yeah. So is the 5% significance level. But it works surprisingly well in helping us make decisions. And all that allows us to stop the test when we do.  
Marty: I see. So before we start the test, we set our significance threshold, the desired effect we're looking for, and some sample size number. This then guarantees that when we hit that sample size and stop our test, our p-value is...trustworthy? 

Diane: Right. It basically comes down to the p-value settling down after the sample is large enough. Early on in the test the p-value calculation jumps around too much, and since you're sort of looking for a significant result in order to stop the test early (because we want to deploy the winning strategy sooner!), you're more likely to end the test when the p-value happens to drop under 5% and think that there is a difference, even though it's not really trustworthy yet. It sort of converges to some long term value. In theory we calibrate our test such that we collect enough samples that the p-value settles down when we stop the test. 
Marty: I see - our false positive rate would go up if we stopped early. But even if we keep going, we won't get to 100% right? We'll never know for sure.

Diane: Yeah but it's hard to be 100% sure of anything right? Aren't most of our decisions in general based on high probabilities? I think about A/B tests as a good signal that we're trending in the right direction, but not as the unquestionable truth. There are a ton of assumptions buried in hypothesis testing, in the calculations, in the theory, in the interpretation. There are a bunch of formulas to calculate power and significance depending on the type of input and the type of output. Then there's the whole Bayesian interpretation of testing which sort of throws p-values out the window.   
Marty: Ugh.

Diane: Right. Hopefully the A/B test results align with our business intuition. And if it doesn't, its important we interrogate both the test and our intuition.  
Marty: Yeah, you always say that we shouldn't blindly optimize for the test output, but instead think about things holistically.

Diane: Exactly - that's the most important lesson. A/B testing is just a useful tool in our toolbox helping us to make better decisions.  

