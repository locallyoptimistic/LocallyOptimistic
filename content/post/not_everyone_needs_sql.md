---
author: Scott Breitenother
title: "Not everyone needs to know SQL"
cover: "/img/not_everone_needs_sqls.jpg"
publishDate: "2018-08-05"
draft: true
tags: 
 - SQL
 - org
 - team
 - BI
---

Most people in Analytics remember the dream of building a data-driven organization where everyone in the company knows SQL. The benefits of ubiquitous SQL skills are obvious - data at your finger tips. No more waiting for another team to build a report or pull a CSV. You need the data, you go straight to the database and get the data. In this world, everyone in the company is a superpowered Analyst.

I'm here to tell you it is time to move on - not everyone needs to know SQL.

Right now you're probably imagining me as a data gremlin sitting in a dark tower hoarding my data gold. To the data gremlin, data is power - you need some data from the gremlin? It will cost you! Data gremlins believe that once everyone has access to data, no one will need them and their power will be gone.

I on the other hand believe that everyone should have access to the data they need. I just don't think SQL is the best way to achieve that goal. It is 2018 and the tools in the market are good enough that everyone CAN access the data they need without the downsides of SQL.


## Untrained SQL users make mistakes

There is a reason why a sixteen year old with a drivers license is much more likely to have an accident than someone who has been on the road for a few years - it comes down to experience. Learning SQL is actually a lot like learning how to drive - you need to learn two components: the mechanics and the environment.

In driving, the mechanics mean learning how to stop at a red light, take a left into traffic or merge on to a highway. In SQL (for analysis), the mechanics are the various components of the select statement (e.g., from, where, group by). In driving, the environment is knowing the roads you travel well (e.g., watch out for that hidden entrance). In SQL, the environment is your schema, tables, columns and data definitions. Both knowledge of the mechanics and the environment are required to avoid accidents in both the automotive and the analytics worlds.

Unfortunately, in many organizations that strive for universal SQL knowledge, it ends up looking like a street full of 16 year old drivers - they past the multiple choice theory test and the driving test in a parking lot, someone gave them a license and now they are on the road potentially causing havoc. 


## The mechanics

SQL is a fairly simple, straight forward language; however, it is also very powerful and at times very tricky. I won't explore all of the intricacies of SQL - that fills up a blog post or a book on its own. Instead, I will explore three types of commonly occurring errors: order of operations, not understanding SQL and efficiency

Order of operations - There is a subtle beauty to SQL, which is what makes it so powerful. However, it can be very nuanced. For example, a query to calculate sales for the 2017 Q2 cohort of customers can easily turn in 2017 Q2 sales or 2017 Q2 sales for the 2017 Q2 cohort. 

Truly understanding how SQL works - A cursory knowledge of SQL means you know enough to be dangerous, but not enough to truly understand what you are doing. When I first started writing SQL I would throw the `distinct` everywhere, with some vague understanding that it removed duplicates. While using distinct typically has a neutral to positive impact, sometimes you want duplicates. Likewise, if you do not fully understand how a `join` works, you may not realize you have created unwanted duplicates / fanning (I have seen this many, many times.). 

Efficiency (and cost) - Much like driving, you are not alone on the road, which means your actions can impact others as well. You probably know this situation well (or have been guilty of it yourself - I know I did this when I first started). All the sudden your database starts dragging or potentially even grinds to halt. Someone pulls up the admin console and you see a query the is essentially `select * from table X join to every table in the data warehouse`. In the case of a traditional data warehouses an error like this reduces speed for other users, in the case of elastic services like BigQuery, this error would result in increased cost.


## The environment

L




* Untrained SQL users make mistakes
* Untrained SQL users reduce database performance / increase cost






* It is a tremendous amount of work to make a novice friendly data warehouse
* Education (mechanics and environment)

Complete environment expertise is actually not achievable (in an individual)


