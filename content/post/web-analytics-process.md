A web analytics implementation project often starts with quite a lot of fanfare and resources; there will usually be an audit and needs assessment process to determine what tracking needs to be implemented or fixed, an implementation project plan identifying task owners and dates, and earmarked hours from the development team for tasks like implementing tracking code and building a data layer. All of this generally ensures that there’s satisfactorily comprehensive and accurate tracking in place at the end of the project. 

So why do we still regularly see the following?
Broken tracking
Unexplained data discrepancies
Untagged marketing campaigns or site elements
Confusing and messy naming conventions
Etc…

Why web analytics breaks
Web analytics tracking typically relies on front-end technology like HTML, CSS, and JS, and therefore is prone to break as the site structure changes. This means that for most organizations, their web analytics implementation deteriorates over time as the site gets updated and attention shifts to other projects. 

This is especially true in the common case where web analytics doesn’t clearly belong to any one department. Frequently, marketing and product teams are the primary consumers of the data, but lack the technical skills to implement tags themselves. In this case they either need to turn to the IT team, or rely on outside agencies and consultants for planning and implementation. 

This mismatch between who uses the data and who implements data collection often results in a poor feedback cycle and lengthy delays. Without constant vigilance, site changes degrade tags, new features don’t always get tagged, and so on. This often goes unnoticed until someone tries to dig into the data and discovers the problem, at which point there’s a flurry of activity to resolve the issue (depending on how serious it is, the entire implementation process may start again). 

In this post I will provide a series of steps to follow to make sure a web analytics tool is not just implemented correctly but also maintained over time.

Step 1: Audit the existing implementation
If you already have a web analytics tool in place, methodically review the account setup and run a technical tracking review. 

The audit should include the following elements, at least:
all site tracking tags (standard pageview tags as well as any custom tags) to ensure they’re firing correctly
campaign tracking tags and marketing channel groups
naming conventions for all custom events or variables
admin setup in the analytics account, including custom features like goals, content grouping, filters, etc.
overall account structure to ensure logical organization of all properties and views. For organizations with multiple sites, consider whether roll-up reporting should be enabled, and whether implementation should be standardized across sites for ease of reporting
a strategic review of the site to identify site and user elements that should be tracked, that aren’t yet. This will often involve discussions with different departments. 

For a new site, or a site without existing tracking, you don’t need to fix anything yet, so will just need to plan what you would like to track.

Step 2: Create a tracking plan
Based on the results of the first step, create a comprehensive tracking plan. This will include any required fixes identified earlier, as well as new features you’d like to track. This will probably look something like this (additional technical details may be included directly in the tracking plan or provided in supporting documents).
Complete
Task
Description
Owner 
Date


Standard Page Tagging
Add basic pageview tags to all pages of the site






Error Page Tracking
Add tracking to "not found" pages 






Navigation Bar Tracking
Track clicks on top navigation bar






Social Buttons Tracking
Track shares to FB and Twitter






Goals
Set up registration and purchase funnel goal






Step 3: Implement
Implement tags using your preferred method (ideally a tag management system). Set up goals, add any filters and data cleanup via Admin settings, QA thoroughly, and then launch to production.

Step 4: Build tracking into the core of new features
Note that steps 1-3 are the standard steps of an implementation project, as described in the introduction. We can consider those to be the “launch” phase, while steps 4 and on are the “maintenance” phase designed to prevent post-launch degradation.

Building tracking into new features requires that analytics becomes as integral to new features as the basic functionality itself. For example, say the product team develops a new product recommendation component to be featured on the homepage. In an organization not optimized for web analytics, the new feature launches. Perhaps a day or a week later, the product team wants to understand the impact of the new recommendation component, only to discover that the tagging is missing some key information (e.g. the position of the recommended item) or, worse, the new component contains no tags at all.

So this step requires a major shift in the web analytics process. Rather than adding analytics tracking on an ad-hoc or reactive basis, each new product’s specs should by default contain a section on tagging. This can be accomplished in project management tools by adding an analytics subtask specifically for the tagging portion of the feature. A designated individual or team would populate this subtask with the details of what should be tracked, and what naming conventions to use. Then the tracking should be tested as part of the QA process, and be considered a standard part of the feature launch.

Step 5: Set up alerts
Most web analytics tools like Adobe Analytics and Google Analytics enable custom alerts. These alerts should be set to programmatically check for tracking issues. For example, if visits or revenue < 75% of same day prior week, send an email. You can set these up on specific pages and events as well, to help prevent any major data outages.

I suggest using these alerts to look only for data outages, rather than to be notified of traffic changes that could be within the normal range of behavior. This is to avoid the fatigue of too many emails, where you don’t notice, or disregard, alerts. If you still like to use alerts for other use cases, you can consider sending them into another email address.

Step 6: Create documentation and training
Document as much as you can: the current setup, what is being tracked, any technical notes, who is responsible for implementation or questions, dates of any outages or site changes. The documentation should contain details of account customizations like custom dimensions, event tracking, and marketing campaign tags. This information should be kept in a shared document online or on your intranet.

Training should be handled by whoever is responsible for web analytics at your organization, whether that’s someone onsite or at a partnered agency. 

Regular training is important to empower employees and build analytics into the culture of the organization. You may discover, as I have, pent-up demand for web analytics training, where training sessions fill up well in advance from employees eager to learn how to understand and improve their own performance through data. 

Step 7: Run mini-audits
Running a full audit regularly isn’t practical due to the effort involved, but it’s still important to keep on top of changes. To address this you can run regular mini audits every month or two to review and catch tracking and setup problems that might have otherwise been overlooked. Google lists several tools here to automate the process: https://www.google.com/analytics/partners/search/apps?category=114 (I created one of them, the Online Audit Tool for Google Analytics, but there are several to choose from).

Final thoughts 
I believe everyone should be looking at their slice of the business, not just designated data analysts. Besides the positive impact of building a data-driven culture, having more eyes on the data will also help quickly identify any broken tracking or other issues. And if there are no tracking issues, then people will put more faith in the data and use it more; this is the desired cycle. So, following the above steps will help prevent the too-common scenario where the web analytics tool is distrusted and avoided, and instead land your organization at a place where employees view the tool positively, as a resource for decision making.
