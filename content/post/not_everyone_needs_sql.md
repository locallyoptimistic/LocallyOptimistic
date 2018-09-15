---
author: Scott Breitenother
title: "Not everyone needs to know SQL"
cover: "/img/not_everone_needs_sql.jpg"
publishDate: "2018-08-05"
draft: true
tags: 
 - SQL
 - org
 - team
 - BI
---

Everyone wants to be data driven, and they should. Teaching everyone in your organization how to write SQL is no longer the way.

The benefits of ubiquitous SQL skills are obvious - data at your finger tips. No more waiting for another team to build a report or pull a CSV. You need the data, you go straight to the database and get the data. In this world, everyone in the company is a superpowered Analyst.

Unfortunately, the reality is that an untrained or inexperienced SQL user is a lot like a sixteen year old behind the wheel of a car. The only difference is that instead of car accidents, you have data accidents: data that doesn't mean what you think it means, leading to bad decisions.

I am not speaking from a position of self-preservation. I don't want everyone to need the Data team to access data. In fact, I want the opposite. Data teams [start with reporting]({{< relref "reporting-is-a-gateway-drug.md" >}}), but aspire to answer more complex questions and provide insight. The only way to get there is to enable our stakeholders to answer their own questions. SQL just isn't the way.

It is 2018 and the tools in the market are good enough that everyone CAN access the data they need without the downsides of SQL. I propose that data teams focus on surfacing data through business intelligence tools and actioning on it through [intelligent applications]({{< relref "data-platforms.md" >}})


## Untrained SQL users make mistakes

There is a reason why a sixteen year old with a drivers license is much more likely to have an accident than someone who has been on the road for a few years - it comes down to experience. In SQL, like driving, you need to learn theory (e.g., how to write a `select` statement) and become familiar with the environment you operate in (i.e., the schemas and tables of your data warehouse). Then you must practice, practice, practice.

Unfortunately, in many organizations that strive for universal SQL knowledge, it ends up looking like a street full of 16 year old drivers - they pass the multiple choice theory test and can drive around in a parking lot and now they are out on the road.


## The theory

SQL has a great learning curve, where you can very quickly learn how to create a functioning `select` statement (the SQL equivalent of `Hello world` is unfortunately `select *`). However, due to the speed to first results many novice SQL users don't recognize how elegant, powerful and tricky the language is. There is a reason first developed in the 1970s is still the data tranformation tool of choice for many teams. SQL is a workhorse with plenty of nuance... which leads to mistakes

The three types of errors I come across most often are due to not understanding order of operations, syntax and efficiency.


Order of operations - The SQL to calculate sales by monthly cohort can easily turn into sales by month or sales for a specific month.

```
/* Sales by month */
select
	date_trunc('month', order_completed_at) as order_month
	sum(order_total) as sales
from orders
group by 2
order by 1

/* Sales by monthlycohort */
with customer_first_order_month as (
	select
		customer_id,
		date_trunc('month', min(order_completed_at) as first_order_month
		sum(order_total) as sales
	from orders
	group by 1,2
)
select
	first_order_month,
	sum(sales) as sales
from customer_first_order_month
group by 1
order by 1
```

Syntax - When I first started writing SQL, I did not truly understand the SQL syntax. I would throw a `distinct` in every query, with some vague understanding that it removed duplicates. While using distinct typically has a neutral to positive impact, sometimes you want duplicates. Likewise, if you do not fully understand how a `join` works, you may not realize you have created unwanted duplicates / fanning. 

```
/* Unintended fanning */
select count (order_id) /* Should use a distinct here */
from orders
join order_items using(order_id)
where order_items.product_category = 'shoe'
```

Efficiency (and cost) - Much like driving, you are not alone on the road, which means your actions can impact others as well. You probably know this situation well (or have been guilty of it yourself - I know I did this when I first started). All the sudden your database starts dragging or potentially even grinds to halt. Someone pulls up the admin console and you see a query the is essentially `select * from table X join to every table in the data warehouse`. In the case of a traditional data warehouses an error like this reduces speed for other users, in the case of elastic services like BigQuery, this error would result in increased cost.


## The environment

When you learn to drive in your neighborhood you learn the blind corners, hidden entrances and difficult left turns. Learning to query your companies database is no different. While mature companies tend to have better designed and documented data warehouses, smaller companies will have hidden pitfalls (e.g, logical deletes and testing data) that you need avoid.  


## Practice makes perfect



## The solution

On approach to solving this problem is to construct stakeholder-friendly tables and educate your stakeholders on the theory and the environment. This is a commitment


The other approach, which I advocate for, is to funnel your resources into building or implementing tools and platforms to sit between your stakeholders and the data. In an organization with finite resources you are better off building stakeholder-facing data products (e.g, BI tools, recommendation engines) than stakeholder-facing data warehouses.

To surface data to your 


While I framed the two alternatives as mutually exclusing, they can actually be done simultaneously. In larger organizations you may have a wide spectrum of technical data users, many of whom are fairly far away from the team that manages the data warehouse and data infrastructure. These technical users benefit from a well documented, stakeholder facing data warehouse, especially if there are many separate data warehouses. In these cases it mat not be a black and white decision who should have sql access. In these cases I recommend a philosphy of encouraging users, where possible, to use tools to access data rather than SQL access.

Even in smaller organizations, basic sql training for stakeholders helps them to understand the data that is available to them and formulate better questions.



Complete environment expertise is actually not achievable (in an individual)


