---
author: Randy Clinton
title: "Wrong data can still be right"
publishDate: "????"
cover: "https://locallyoptimistic.slack.com/files/UAPC614KY/FC66CB6NL/image_from_ios.jpg"
draft: true
tags:
 - data-integrity
 - communication
 - errors
---
You can see the signs of "wrong data" from a user's reaction. It is a data point, trend line, or report that makes the user lean into their screen, squint, tilt their head a bit, and say, “nooooo, that’s wrong.”  

Wanting to jump in and “fix” it is a natural feeling, especially for people who like the technical side of data. Pause for a beat and think through what “wrong” could mean before you head off fixing something that is not actually broken because it's not always the data that needs fixing.
<!--more-->

## Begin with questions
Recall the saying, “measure twice, cut once.” Applied here, we should be absolutely sure what the problem is with data before we get to work.

Ask these two questions to the person who noticed the data being wrong (answer them yourself if you spotted the issue): What result would you expect to see here? Where would you check this number to know it’s right? A number missing a negative sign requires a solution miles away from a bug showing your sales a tenth of the actual number or off by a unit or two.

There are three common situations in which data may be considered wrong, and the appropriate response to each situation is different. They are:

<ul>
<li> The data is confusing (but not wrong)
<li> The data really is wrong
<li> The data customer is using a faulty source to “check” the data
</ul>


## The data is confusing (but not wrong)
This explains most of the “wrong” data I’ve seen, and pops up a lot when the business logic is hidden behind some sort of reporting layer or business intelligence tool. If you have a sales report, does it count returns? Once you issue the refund, you have not made anything from the purchase and you might still have the item in your warehouse (depending on when it was refunded). These metrics require pristine documentation because they can mean so many things to so many people. To a marketer and a warehouse manager words like “order” and “revenue” can call to mind different business logic. If you are providing reporting, you need to find the language unifying those departments.

I have seen website reporting tools cause problems here as well. Most tools don’t show real-time data in reports. So pulling up traffic details for your site might show you data that is lagging hours behind. If you thought a new part of your site was launching and your website dashboard shows near-zero traffic going to it, you are going to want answers quick.

Notice the problem here is in how the data is presented or taught to the data customer. Just sending the data in an email, or building a report can do more harm than good.

## The data really is wrong
If you are giving your screen the “what the heck” stare, and find out you goofed in your code, give yourself a pat on the back -- seriously. It’s easy enough to write the code and ship it, but to sanity check it and have the business context to see numbers don’t pass the sniff test takes practice. Catching “wrong” because you know what the numbers should be is an accomplishment.

You can up your chances at catching wrong data by finding test groups and presenting your findings to them.

## The data customer is using a faulty source to “check” the data
One place you might see this is in web site statistics. Suppose you have an internal tracking system tracking site visits, and also use an external tracking tool. On your way to the office an email hits you -- “the site session count is wrong.”

Someone shows you how the internal traffic number is 10x more than the external tracking tool. But can you trust that source? Maybe the service was down for an hour last night which caused it’s number to undercount your traffic. A quick check of the recent history might show you if there’s cause for alarm. The real problem might be the tracking of the secondary source.

Maybe someone expected the numbers to match up exactly, which makes sense but often is an an unrealistic goal. 

Use past performance to decide how much noise you’ll allow in systems measuring the same metric. Suppose you have a pair of systems that track site sessions, maybe one is counting off server requests and another tracks off of a pixel tracker that fires on the website. If your pixel-based tracking counts consistently differ from counts sourced from server logs by 1-2%, you’ll have a rough estimate for what's ok and what's not. If you only have one system, you have week to week, month to month or year to year numbers to use to create some reasonable idea about what range you expect. Realize you'll know this better than those in other departments and you'll be able to help put out fires by reminding people of this acceptable error range.

## Conclusion

Finding the reason someone thinks a data point is wrong is key to applying the right solution -- teaching your data customer or fixing the data product.

The reason why it's viewed as wrong should not be used to offload responsibility. If data customers look at a report and get the wrong idea of the business logic under the hood, that is as much of a problem as the math being wrong in a function.

Reporting tools are great for a business (see: [_Reporting is a Gateway Drug_](https://www.locallyoptimistic.com/post/reporting-is-a-gateway-drug/)), but with sharing information comes the responsibility to help people make sense of it, and to have the right expectations. If you are digging into the data every day with code, you’re all too familiar with the imperfections of the data stores you are touching. It’s helpful to keep clarifying what words mean, and what the data is tracking under the hood as you present it. For instance, if you talk about site sessions, share in writing what exactly a site session is. Identify business owners for every KPI as you build out your [_Data Quality Flywheel_](https://www.locallyoptimistic.com/post/data-dies-in-darkness/). Everyone at your company might know in general terms what a session is. However, in order to use it as evidence for business decisions, the word needs the nuance of the site tracking tool you’re using.
