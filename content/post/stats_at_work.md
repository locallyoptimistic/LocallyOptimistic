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

DS: Great. See you next time. OR Well not 100%, but sure enough to make a decision!
MA: Hang on a second. While I have you I had a quick question. This might sounds stupid...but how do you know that A is actually better than B?

<!--more-->

DS: Well, we usually measure how confident we are that A is better than B using something called the p-va-
MA: Yeah p-value. I know about that. If it's less than 5% then the test is significant otherwise it's not.

DS: Yeah more or less.
MA: OK. And I know that the p-value is not the probability of A being better than B. It's something else...but what is it exactly?

DS: The exact definition of the p-value isn't super helpful, but it basically quantifies the probability of seeing what we saw - namely that A is better than B - if in fact A was the same as B! In other words, if A and B were equal, then how unlikely was our result? 
MA: So a small p-value means that if A and B were equal, then our result would be highly unlikely. And this leads us to conclude that the result of the test can be trusted? It's accurate?

DS: Kinda yeah. To be clear, there are different ways to quantify what we believe. This type of analysis, called hypothesis testing, is the most common one, used by the vast majority of scientists. 
MA: Ok. So at the end of the test, you calculate the p-value and saw that it was under 5%. 

DS: Right.
MA: Ok. So A's overall conversion rate was 21% and B's overall conversion rate was 20.1%. So we're confident that A is bigger than B, cause we got a p-value less than 5%. But what if A was 20.2% instead of 21%? or 25%? Shouldn't we care about how much bigger A is?

DS: Absolutely. There's some difference between A and B that we care about - say it's 0.5%. This is called the effect size. If the difference between A and B is less than 0.5%, then we say they're effectively equal. The p-value calculation takes this into account. 
MA: Oh ok - so there's a link between p-value and effect size.

DS: Yup. And the sample size.
MA: Right that was the next thing I was curious about. How did you know when to stop?

DS: Yeah, so that's all about the sample size, how many users we needed to be confident in our conclusion.
MA: Let me guess...there's a formula for sample size?

DS: It's all related actually! Given a significance threshold, an effect size and a power level, I can calcu
MA: Wait what's power?

DS: Oh sorry. Power is sometimes confused for sample size because they are very much linked. Let's take a step back. There are two things we want to check for in this test. First, that A is truly bigger than B by at least the amount we care about (the effect size). Second, we want to be confident in our conclusion.
MA: So you make two calculations? One for p-value and one for Power?

DS: Sort of - they're part of the same formula. Power is another way to measure the confidence around our p-value calculation. When I have a small sample, I might calculate a p-value that I'm not super confident in. 
MA: So by collecting more data points, you'll be more confident?

DS: Precisely.
MA: Ok. So I know we're trying to get under 5% significance. What's our sample size? 

DS: Well, that varies. You're right, we want 5% significance, and we also want a 0.5% effect size. Now the question is - how many data points do we need to be confident that our conclusion can be trusted. But let me ask you - how do we quantify "trust level"?
MA: I don't know. 95%?

DS: Yeah that's tempting, cause we chose 95% for the threshold level to determine if the p-value is significant or not. Let's flip the "trust level" question, and consider what our trust level would be with 10 users. 
MA: Probably small.

DS: Right - small sample, small trust level. 
MA: Ok, so can we just set up the formula such that we put in a trust level of 95%, a significance level of 95% and an effect size of 0.5%? 

DS: We could, but a power level of 95% is unusually high. The number of sample points we'd need increases exponentially. 
MA: So how do you pick the power level?

DS: Historically it's 80%. Some smart people figured that making a false positive error was 4 times worse than making a false negative error. So if we agree that 5% significance is a good false positive rate to protect against, then 20% is a good false negative rate, or 80% power.
MA: Oh, so it's kind of made up.

DS: Yeah. So is the 5% significance level. But it works surprisingly well in helping us make decisions. 
MA: Yeah, or so we think.

DS: I mean, no test is perfect. I'd think about A/B tests as a good signal that we're trending in the right direction, but not as the unquestionable truth. There are a ton of assumptions buried in hypothesis testing, in the calculations, in the theory, in the interpretation. Hopefully the A/B test aligns with our business intuition. And when it doesn't, its important to interrogate both the test and our intuition. 
MA: Right, you always say that we shouldn't blindly optimize for the output, but instead think about things holistically.

DS: Yeah - that's the most important lesson. A/B testing is just another important tool in our toolbox helping us make better decisions.



