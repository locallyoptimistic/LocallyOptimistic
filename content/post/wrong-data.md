---
author: Randy Clinton
title: "Wrong data can still be right"
publishDate: "????"
cover: "????"
draft: true
tags: 
 - data-integrity
 - communication
 - errors
---

Let us explore what it means for data to be wrong. For now, think of it from the user’s reaction only. It is a data point, trend line, or report that makes the user lean into their screen, squint, tilt their head a bit, and say, “nooooo, that’s wrong.”  

Wanting to jump in and “fix” it is a natural feeling, especially for people who like the technical side of data. But let me make the case to pause for a beat and think through what “wrong” could mean before you head off fixing something that is not actually broken. 
<!--more-->
I propose there are three common situations in which data is considered wrong, and only one of them would fit a literal definition of “wrong.” They are (in order from least to most common):

<ul>
<li> The data consumer is using a faulty source to “check” the data.
<li> The data is literally wrong. 
<li> The data consumer misunderstands what the data represents. 
</ul>

## Begin with questions
Recall the saying, “measure twice, cut once.” 

Ask these two questions to the person who noticed the data being wrong (answer them yourself if you spotted the issue): What result would you expect to see here? Where would you check this number to know it’s right? A number missing a negative sign requires a solution miles away from a bug showing your sales a tenth of the actual number or off by a unit or two.

Every time I look my old code I have new ideas for pretting it up, but when you’re on the hunt for the cause of wrong data keep an eye on the prize. Make time to deal with technical debt another time. 

## Other data is wrong
This is the least common of the three types of wrong, but common enough that it’s worth checking. One place you might see this is in web site statistics. Suppose you have an internal tracking system tracking site visits, and also use an external tracking tool. On your way to the office an email hits you -- “the site session count is wrong.” (_note: emails arriving between 5am and when you walk into the office are almost never good. No one gets an email saying “Hey we decided to give you a raise.”_). 

Someone shows you how the internal traffic number is 10x more than the external tracking tool. But can you trust that source? Maybe the service was down for an hour last night which caused it’s number to undercount your traffic. A quick check of the recent history might show you if there’s cause for alarm. The real problem might be the tracking of the secondary source.

Maybe someone expected the numbers to match up exactly, which makes sense but also an unrealistic goal. If the two numbers are off by less than a percent it’s likely noise in how the two systems are tracking events. 

I remember someone noting a report was wrong because the sales numbers didn’t make sense. How could we have sales for an item that hadn’t been released yet? Proof the report was wrong? Nope. The server logs showed an affiliate partner had published a direct link to an item we hadn’t made live yet. The report was correct, but by exploring the source of truth we were able to figure out something more meaningful for the company.

## It really is wrong
If you are giving your screen the “what the heck” stare, and find out that you goofed in your code, give yourself a pat on the back -- seriously. It’s easy enough to write the code and ship it, but to sanity check it and have the business context to see numbers don’t pass the sniff test takes practice. Catching “wrong” because you know what the numbers should be is an accomplishment. 

You can up your chances at catching wrong data here by finding test groups and present your findings to them. 
The data is confusing (but not wrong)
This explains most of the “wrong” data I’ve seen, and pops up a lot when the business logic is hidden behind some sort of reporting layer or business intelligence tool. If you have a sales report, does it count returns? Once you issue the refund you have not made anything from the purchase, and you might still have the item in your warehouse (depending on when it was refunded). These metrics require pristine documentation because they can mean so many things to so many people. To a marketer and a warehouse manager words like “order” and “revenue” can call to mind different business logic. If you are providing reporting, you need to find the language unifing those departments. 

I have seen website reporting tools cause problems here, too. Most tools don’t show real-time data in reports. So pulling up traffic details for your site might show you data is lagging hours behind. If you thought a new part of your site was launching and your website dashboard shows near-zero traffic going to it, you are going to want answers quick. 

Notice the problem here is in how the data is presented or taught to the data consumer. Just sending the data in an email, or building a report can do more harm than good.

## Teach the customer; fix the product
Finding the reason someone thinks a data point is wrong is key to applying the right solution, but It should not be used to offload responsibility. If data consumers look at a report and get the wrong idea of the business logic under the hood, that is as much of a problem as the math being wrong in a function. 

Reporting tools are great for a business (see: [_Reporting is a Gateway Drug_](https://www.locallyoptimistic.com/post/reporting-is-a-gateway-drug/)), but with sharing information comes the reponsibility to help people make sense of it, and to have the right expectations. If you are digging into the data every day with code you’re all too familiar with the imperfections of the data stores you are touching. It’s helpful to keep clarifying what words mean, and what the data is tracking under the hood as you present it. For instance, if you talk about site sessions, share in writing what exactly a site session is. Sure everyone understands the concept of a session, but do they all have the same definition as the site tracking tool you’re using for your analysis? 
