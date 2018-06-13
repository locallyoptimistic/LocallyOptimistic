---
author: Ana Kravitz
title: "Web Analytics Maintenance Process"
publishDate: "2018-07-28"
draft: true
tags: 
 - web analytics
 - tracking plan
 - event tracking
---

A web analytics implementation project often starts with quite a lot of fanfare and resources. There will usually be an audit and needs assessment process to determine what tracking needs to be implemented or fixed, an implementation project plan identifying task owners and dates, and earmarked hours from the development team for tasks like implementing tracking code and building a data layer. All of this generally ensures that there is satisfactorily comprehensive and accurate tracking in place at the end of the project. So why do we still regularly see web analytics issues?<br/>
<!--more-->

Common web analytics issues:

* Broken or misconfigured tracking
* Duplicate tags
* Unexplained data discrepancies
* Untagged marketing campaigns or site elements
* Confusing and messy naming conventions
* Lack of documentation
* Multiple systems setting tags (e.g. directly onpage, a tag management system, a CMS plugin), complicating troubleshooting 

## Why web analytics tracking breaks
Web analytics tracking typically relies on front-end technology like HTML, CSS, and JS, and therefore is prone to break as the site structure changes. This means that for most organizations, their web analytics implementation deteriorates over time as the site gets updated and attention shifts to other projects. 

This is especially true in the common case where web analytics does not clearly belong to any one department. Frequently, Marketing and Product teams are the primary consumers of the data, but lack the technical skills to implement tags themselves. In this case they either need to turn to the IT team, or rely on outside agencies and consultants for planning and implementation. 

This mismatch between who uses the data and who implements data collection often results in a poor feedback cycle and lengthy delays. Without constant vigilance, site changes degrade tags, new features do not always get tagged, and so on. This often goes unnoticed until someone tries to dig into the data and discovers the problem, at which point there is a flurry of activity to resolve the issue (depending on how serious it is, the entire implementation process may start again). 

In this post I will provide a series of steps to follow to make sure a web analytics tool is not just implemented correctly but also maintained over time.

## Web Analytics Maintenance Process
## Part 1: Launch
### Step 1: Audit the existing implementation
If you already have a web analytics tool in place, methodically review the account setup and run a technical tracking review. 

The following elements should be audited:

* All site tracking tags (standard pageview tags as well as any custom tags), to ensure they’re firing correctly
* Campaign tracking tags and marketing channel groups
* Naming conventions for all custom events or variables ([Example event tracking naming strategy](http://mixedanalytics.com/blog/event-tracking-naming-strategy-for-google-analytics/))
* Admin setup in the analytics account, including custom features like goals, content grouping, filters, etc.
* Overall account structure to ensure logical organization of all properties and views. For organizations with multiple sites, consider whether roll-up reporting should be enabled, and whether implementation should be standardized across sites for ease of reporting

Additionally, consider site and user elements that are not yet tracked. This will typically be a more strategic process that involves discussions with different departments. 

For a new site, or a site without existing tracking, you can skip the audit and get right into planning what you would like to track.

### Step 2: Create a tracking plan
Based on the results of the first step, create a comprehensive tracking plan. This will include any required fixes identified earlier, as well as new features you would like to track. This will probably look something like this (additional technical details may be included directly in the tracking plan or provided in supporting documents).

| Status   | Task | Description | Owner | Date|
| ------------- | ------------- |------------- |------------- |------------- |
|   | Standard Page Tagging  | Add basic pageview tags to all pages of the site | | |
|   | Error Page Tagging  | Add tracking to "not found" pages | | |
|   | Navigation Bar Tracking  | Track clicks on top navigation bar | | |
|   | Social Buttons Tracking  | Track shares to FB and Twitter | | |
|   | Goals  | Registration and purchase funnels | | |

### Step 3: Implement
Implement tags using your preferred method (preferably through a tag management system). Within the analytics tool, set up goals and add any filters and data cleanup. QA each tag thoroughly to ensure that they are all firing correctly. There are plugins to make this easier, for example the [Google Analytics Debugger](https://chrome.google.com/webstore/detail/google-analytics-debugger/jnkmfdileelhofjcijamephohjechhna) and the [Debugger for Adobe Analytics](https://chrome.google.com/webstore/detail/debugger-for-adobe-analyt/bdingoflfadhnjohjaplginnpjeclmof). Finally, launch to production.

## Part 2: Maintenance
### Step 4: Build tracking into the core of new features
Note that steps 1-3 are the standard steps of an implementation project, as described in the introduction. We can consider those to be the “launch” phase, while steps 4 and on are the “maintenance” phase designed to prevent post-launch degradation. 

Building tracking into new features requires that analytics tracking implementation becomes as integral to new features as the basic functionality itself. For example, say the product team develops a new product recommendation component to be featured on the homepage. In an organization not optimized for web analytics, the new feature launches. Perhaps a day or a week later, the product team wants to understand the impact of the new recommendation component, only to discover that the tagging is missing some key information (e.g., the position of the recommended item) or, worse, the new component contains no tags at all.

This step requires a major shift in the web analytics process. Rather than adding analytics tracking on an ad-hoc or reactive basis, each new product’s specs should by default contain a section on tagging. This can be accomplished in project management tools by adding an analytics subtask specifically for the tagging portion of the feature. A designated individual or team would populate this subtask with the details of what should be tracked, and what naming conventions to use. Then the tracking should be tested as part of the QA process, and be considered a standard part of the feature launch.

### Step 5: Set up alerts
Most web analytics tools like Adobe Analytics and Google Analytics enable custom alerts. These alerts should be set to programmatically check for tracking issues. For example, if visits or revenue < 75% of same day prior week, send an email. You can set these up on specific pages and events as well, to help prevent any major data outages.

I suggest using these alerts to look only for data outages, rather than to surface traffic changes that could be within the normal range of behavior. This is to avoid the fatigue of too many emails, causing you to not notice, or completely disregard, alerts. If you still like to use alerts for other use cases, you can consider sending them to another email address.

### Step 6: Create documentation and training
Frankly, documentation often goes unread, so clear organization and naming conventions are still the most important factors for creating useable analytics data. But for those who seek it out, there should still be documentation available regarding what is being tracked, technical notes, who is responsible for implementation or questions, and dates of any outages or site changes. The documentation should also contain details of account customizations like custom dimensions, event tracking, and marketing campaign tags. This information should be kept in a shared document online or on your intranet. As an example, here is a [template](https://docs.google.com/spreadsheets/d/1DwarCnVkquuY30emAQRDTBzhizP6xL8TwZm9Lh-KRAM/edit#gid=0) that can be used to track campaign parameters and channel names for different marketing campaigns. 

Training should be handled by whoever is responsible for web analytics at your organization, whether that is someone onsite or at a partnered agency. 

Regular training is important to empower employees and build analytics into the culture of the organization. You may discover, as I have, pent-up demand for web analytics training, where training sessions fill up well in advance from employees eager to learn how to understand and improve their own performance through data. 

### Step 7: Run mini-audits
Running a full audit regularly is not practical due to the effort involved, but it is still important to keep on top of changes. To address this you can run regular mini audits every month or two to review and catch tracking and setup problems that might have otherwise been overlooked. Google lists [several tools](https://www.google.com/analytics/partners/search/apps?category=114) to automate the process (I created one of them, the [Online Audit Tool for Google Analytics](https://www.google.com/analytics/partners/company/5118885300797440/gadp/5629499534213120/app/5707702298738688/listing/5639274879778816), but there are several to choose from).

## Final thoughts 
Ideally everyone should be looking at their slice of the business, not just designated Data Analysts. Besides the business benefits of democratizing and increasing data usage, having more eyes on the data will help quickly identify any broken tracking or other issues. And if there are no tracking issues, then people will put more faith in the data and use it more, [which is the desired cycle]({{< relref "data-dies-in-darkness.md" >}}). Following the above steps will help prevent the scenario where the web analytics tool is distrusted and avoided, and instead land your organization at a place where employees view the tool positively, as a useful and trusted resource that can support decision making.

