---
title: "Advice for the Aspiring Data Scientist"
author: "Ilan"
cover: "/img/cover.jpg"
tags: ["datascience"]
date: 2018-10-01T21:29:29-04:00
draft: true
---

There’s a lot of noise out there, but here’s what helped me (in retrospect) and continues to, as I try to get smarter as a data professional.

<!--more-->

The general theme is echoed by Tyler Cowan’s sentiment in his podcast on the Ezra Klein show, when he recommend reading [piles of books](https://www.vox.com/2018/5/21/17369920/ezra-klein-show-book-recommendations-tyler-cowen-shakespeare-amazon) instead of any individual book on a given subject. He was getting at the idea that there isn’t really a single definitive source on anything. There are many sources of knowledge that overlap in various areas. My perspective is that you should strive to find the space of maximum overlap in the Venn diagram of the topic and learn that first. Once you feel comfortable with that content, begin to move outwards into the edges. The density of the overlap is roughly proportional to the value of the knowledge there. 

With that as a frame, in this post I will provide some pieces of advice on what every Data Scientist should be aware of:

* Python / R technical skills
* Basic stats
* Practical business knowledge

<h3>Coding skills</h3>

Learn python or R (probably python if you want to work in tech). It's also helpful to become comfortable operating in a Unix shell - get away from GUIs and learn to love the command line. Start by customizing your terminal! Learn about your `.bashrc` and `.bash_profile` and customize it. Better yet, do it in Vim. This alone will elevate your Unix game quite a bit.

More importantly though, I recommend learning Python from two perspectives - the Data Analysis and generic Software Engineering. Most aspiring DS's will likely download some book about Data Analysis in Python. That's a great start. Download datasets and hack on them. Solve problems. Get a bunch of data, clean it, model it and visualize it. This type of learning will skew heavily towards single purpose, modular programs. Given some input, produce an output. It’s easy to start here because you don’t have to think about the greater infrastructure required to support such a program in production. The amount of overhead required to know to produce a useful script that makes predictions is much lower than for, say, programming a game. This makes it a lower barrier to learn something effective - quick wins are great for beginners!


Data analysis requires knowledge of concepts like functions, list comprehension, string manipulation, basic web handling (to download datasets), data-centric libraries such as `numpy`, `pandas` and `sklearn` and plotting, using `matplotlib` or `seaborn` or whatever. You’ll actually do more plotting in here than many software engineers ever use. This is all good stuff to know inside and out. But its important to realize that most software engineers don't code this way. That is, they don't generally use pandas for data manipulation, they rarely perform complex vector manipulations (`numpy`) and they don't plot (that's what front end people are for). Since you'll be working closely (hopefully) with software engineers and there is a lot you can learn from them, it's useful to familiarize yourself with how they solve problems.

After getting the basics of data analysis-centered Python programming, move onto something more generic like programming a game. Here you’ll use some of what you did before (lists, functions, generators) and get exposure to other data structures like `dicts`, `sets` and OO concepts like classes (don't be afraid of these) along with base modules like `itertools` and `collections`.

Finally, feel free to ditch Jupyter every now and then. It promotes bad coding practice and if you ever want your stuff to run in production, you'll likely need to convert your `.ipynb` to `.py`.

<h3>Basic stats</h3>

Learn linear regression, hypothesis testing and logistic regression. Seriously this stuff is foundational and complex enough to keep you busy for a while, especially if you don't have a strong Statistics background.

To the point above about learning the overlap - understand that Linear regression can be formulated in multiple ways, each with its own nuance. For example, formulating LR as a statistical problem involves thinking probabilistically, talking about residuals and making assumptions around independence, heteroskedasticity and Normality. It also involves knowledge of likelihood estimation, and dovetails nicely into conversations around Bayesian inference, correlations, hypothesis testing, etc... There is a lot that falls out of this.

Formulating LR as a computer scientist would doesn't involve any of the above! It simply involves solving for a set of weights that minimizes the square error. No assumptions on Normality or independence or constant variance. You end up with the same coefficients in both approaches, but in this approach, since you aren't making assumptions, you lose the ability to make inferences on the coefficients. This may or may not be useful to you, but, per the idea of learning the overlap, it's important to know that differences in these approaches exist.

A similar example exists when learning Logistic Regression. The statisticians have their approach to solving it which involves assumptions on residuals and thinks called logit and GLMs. Computer scientists talk about cross-entropy loss functions and sigmoids. Both approaches get you to the same set of weights, but one allows you to calculate odds-ratios and confidence intervals around your coefficients and the other is a basic building block of learning about neural networks (with a sigmoid activation function). 

Either way, it’s not a stretch to understand how a neural network works once you’re an ace with logistic regression. And if you can do multivariate linear regression well, then formulating the logistic regression problem isn’t a stretch. Finally, if you’re a whiz with straight up linear regression and your matrix algebra is up to snuff, then multivariate linear regression is a hop step and jump away. Learn about how other people formulate the same problem, in part to know how it works, and in part to be able to read the literature. Data Science is built upon various fields each with their own problem formulation and terminology. Don't get confused.

This stuff all builds on itself - don’t take short cuts. Understand what you’re doing. It seems obvious on its face, but ask some folks what p-values or confidence intervals are and you’ll be surprised.  Learn the basics, but learn them well

<h3>Build some business intuition</h3>

Learn basic analytics. This includes cohort modeling, basic attribution analysis, funnel analysis and how an A/B test works. Know what a marketing function does and why they work closely with the Analytics team. Why should Product managers care about sample sizes? It's not rocket science so know this stuff. I won't harp on this too much because most of it will come on the job. Don't rush it. It's harder to learn this stuff on your own compared to Python or how Decision Trees work.

Speaking of on the job learning, it'll be helpful to read a lot about why humans make bad (biased) decisions. Become a student of behavioral science and popular psychology (Kanheman and Tversky, Dan Ariely, Nate Silver, even Malcolm Gladwell!). Humans make bad decisions all the time. Data science is in large part a way to help people make better decisions. Therefore it helps to learn where they are likely to screw up. Once you read a small piles of these books, you'll see a lot of overlapping patterns and it'll be more readily apparent.

Data Scientists are expected to be among the more technically minded in the organization. And you’ll be in more meetings with the business side than software engineers. As a result you need to learn their language. What are their pain points? When do they use words like "A caused B" when causation is likely unknown? When they "project next year earnings at 10x this years'" ask how they got there. It could be using back of the envelope math, which is sometimes appropriate. But be sure to hold people accountable. You’ll also need to know how to explain things. So know your stuff really well. Better to know a few things very well than a lot of things at the level of `from sklearn import...`. Don’t be antagonistic, but mature, secured people will appreciate hard hitting questions.

<h3>Keep learning</h3>

Don't optimize locally. Get many perspectives (including on my advice!). Talk to many people in the industry. Go to Meetups, networking events, etc... Learn the vocabulary and start using it. Don't worry about optimizing every minute - you'll be working and learning for a long time. It’s good to learn when you’ve wasted your time. It’ll happen. But learn from it. Don’t let the perfect be the enemy of the good. When you feel yourself veering away from the high density area of the Venn diagram, check if you're confident in your knowledge of the overlap and take small, incremental steps outwards.
