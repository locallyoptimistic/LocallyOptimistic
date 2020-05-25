---
author: Caitlin Moorman
title: "Proficiency v. Creativity"
cover: ""
draft: true
publishDate: "2020-06-01"
tags:
 - org
 - teams
 - management
 - creativity
---

Your data team has to produce solid data. The pipelines have to run, the logic in your transformations has to be sound, and the report has to show accurate revenue. Those fundamentals are hard to argue with. But if that's all you're doing, your team is probably bored and your organization definitely isn't getting as much value as it could out of its data.

Most of us get into the field because we want to take that solid data and create something new with it. We want discover insights that enable the organization to identify opportunities to improve processes, appeal to new customers, or build better products. Sure, we can help diagnose why those metrics don't line up, but that kind of work can feel like a distraction from where we could be adding more value. One of the fundamental challenges of managing a data team is balancing the need for rigor and reliability with the team's desire to spend most of their time creating new knowledge. How do we manage those sometimes conflicting priorities?

<!--more-->

I recently read [The Culture Code](https://www.indiebound.org/book/9780804176989) by Daniel Coyle, and among the many gems about building great organizational cultures, one idea stood out to me as a helpful framework for thinking about this challenge: managing for proficiency versus managing for creativity. Proficiency-focused organizations must consistently and reliably perform clearly defined tasks, while creativity-focused organizations require consistent innovation and fresh ideas.

Coyle argues that great organizations know whether they need to optimize for proficiency or creativity, and take a single-minded approach to building the culture and practices that support that goal. You can look at companies like Pixar, an incredible creativity factory, and Ford, an incredible, well, factory factory, and the benefits of focusing entirely on one of these priorities is clear. But successful data teams require both proficiency and creativity - so how do we lead teams that balance the two?

## Proficiency
Proficiency is critical for data teams: unreliable systems or inaccurate data destroy the trust placed in us. Without proficiency in data collection, transformation, and reporting, the value of anything built on top can become highly questionable.

Coyle describes that leading high-proficiency groups requires emphasizing clear, simple practices that align behaviors with consistent, reliable outcomes. A lot of [engineering best practices](https://www.locallyoptimistic.com/post/analytics-engineer/) increasingly adopted by data teams are proficiency-focused. Examples of these practices include:

- [Testing and monitoring](https://www.youtube.com/watch?v=M_cNspn2XsE&feature=youtu.be)
- Automation
- Version control
- Code review
- Runbooks and templates
- [Creating maintenance plans for new features](https://www.locallyoptimistic.com/post/web-analytics-process/)
- [Rigorous experimentation](https://www.locallyoptimistic.com/post/ab_dialogue/)

Creating a team culture that values these behaviors (ensuring they don’t become under-appreciated [glue work](https://www.locallyoptimistic.com/post/glue-work/)) increases the reliability of results and protects the institutional capital of the Analytics team. We’ve covered a lot of tactics here on Locally Optimistic to build the [data quality flywheel](https://www.locallyoptimistic.com/post/data-dies-in-darkness/) and improve the focus on proficiency within the data team (with help from the rest of the company).

One other tactic I’ve found incredibly useful is to define user trust as a key metric for the data team. It’s one thing to know that occasionally, things break - it isn’t ideal but you’re working to improve it. It’s another thing to know that because something occasionally breaks, your colleagues have trouble trusting the output of the data team more generally. To get that kind of action-inspiring feedback, we survey the company about every 4 months. Questions cover whether folks can access the data they need, understand the data they have, and most importantly to me, whether they trust the data resources they use. Keeping that number moving in the right direction helps motivate the team to ensure proficiency. Fair warning, though - the results from the first survey can be very humbling, so make sure you’re ready to embrace the feedback as constructive!

But as much as I value a robust data warehouse and [accurate reporting](https://www.locallyoptimistic.com/post/reporting-is-a-gateway-drug/), that isn’t what has kept me working with data over the years.

## Creativity
The creativity of analytics is why I show up to work each morning, and I think that’s true for many of us. We want to turn data into new knowledge and products - to learn from the past in order to shape the future. We want to explore and uncover new insights that suggest a path forward for the business. We want to predict who is going to churn instead of reporting on who churned last week. We want to create beautiful and signal-rich visualizations that allow our colleagues to immediately grasp relevant trends and patterns. And though I argued that the *outputs* of analytics engineering encourage proficiency just a few paragraphs ago, I think the *emergence* of analytics engineering as a discipline is also an act of creativity. Very smart folks are thinking outside the box to create tools and processes that apply engineering best practices and solutions to the problems analysts face.

Leading for creativity means fostering systems that consistently churn out fresh ideas, even if many of those ideas don’t turn out to be successful. Your team has to understand that failure is not just a possibility, it's a necessary output of both research and creative processes. Every failure is an opportunity to change your perspective, reframe either the problem or the solution, and over time hone in on a more refined idea of what approaches are likely to be fruitful.

To generate creativity, empowerment is critical - providing support and tools to enable the team and letting them loose. Creativity also requires a real focus on the team’s dynamic and sense of psychological safety. Teams should celebrate individuals who take initiative and generate new ideas, but not all those ideas will ultimately be good ones. Folks need to feel safe suggesting something they aren’t quite sure is fully baked, as well as giving authentic feedback on someone else’s idea in an honest but respectful way.

Tactically, enabling creativity requires time to work on less structured projects and a clear path to pursue ideas. Folks need time for explorations that may not always result in clear outcomes. Sometimes you spend half a day investigating something you think will be meaningful, and it’s just not - or weeks building a model only to find out that you just can’t predict the outcome with any useful level of accuracy. That time wasn’t wasted if you learn something from it.

## The Balance
The magic of a data team is the combination of rigor and open endedness - it isn’t a pyramid, where we need one to enable the other as an ultimate goal. It’s more complementary and interconnected - the yin of proficiency and the yang of creativity, if you will. Focus too much on proficiency, and you’ll have accurate reports created by people who are probably bored every day and stakeholders who don’t really understand the value that the data team can add. Enable too much creativity, and you’ve got folks making decisions based on questionable data or a team that works on projects that are interesting but not relevant to the business.

Maintaining this balance relies on building a team culture that celebrates both rigor and exploration, but also requires a concerted effort just to make time for creative projects. It’s easy to get pulled into an endless queue of ad-hoc tasks and data quality investigations, but you can consciously make space for creativity.

Here are some of the ways I try protect the balance and encourage teams to have a healthy respect for both proficiency and creativity:

- Know where you are in your data journey to strike the right balance. If you are still in the early days of enabling access to reliable data across the organization, your team will spend more time on proficiency-oriented work. Embrace that, and set the right expectations with the team, but find opportunities to bring in creative work as well. Each time you add a data source to your warehouse or add a new capability, take a bit of time to work with stakeholders to imagine what can be done now that couldn’t be done before, and create that reality.
- Communicate this balance to other teams. Be clear that the mission of the data team is not supplying data, it’s creating value from it. Consistently share clear examples of projects that emerged from the data team’s creativity to help those who work with you imagine a better world, and help them understand how your team structure and policies help enable that. When other teams work as true partners, that enables the data team to bring a strong perspective, explore avenues the stakeholders didn't think of, and potentially produce something valuable and novel.
- Constantly improve reporting to increase signal and decrease noise. Keep the company focused on what matters, so the data team is less likely to get sent down rabbit holes investigating trends that may not be material at all. The more clear and consistent your data definitions, the less time you'll spend reconciling various versions of "the same metric."
- Automate all the things. Invest more time up front to open up time later that can be spent on more creative pursuits instead of replicating something the team already worked on last month.
- Encourage [strong relationships](https://www.locallyoptimistic.com/post/culture_of_partnership/) between analysts and business stakeholders. It’s hard to generate ideas when you aren’t deeply engaged, so consider using a [hybrid or embedded](https://medium.com/@djpardis/models-for-integrating-data-science-teams-within-organizations-7c5afa032ebd) team structure that allows your team to become subject matter experts who can apply data knowledge more effectively to their focus area. This deep knowledge also gives the team the context to know whether their ideas are worth pursuing, or not really aligned with what the team needs. Creative projects adjacent to a data team member's current work are more likely to be valuable to the organization than greenfield projects.
- Create [SLAs](https://www.locallyoptimistic.com/post/data-warehouse-sla-p2/) that clearly specify which metrics or reports are P0, and which might wait until they can be prioritized alongside everything else ahead of the team. Set expectations across the company that not every data warehouse hiccup or [questionable trend](https://www.locallyoptimistic.com/post/wrong-data/) is a drop-everything emergency (but truly, some things are).
- Empower your team to get involved in hack week if your company sponsors one. It’s a low commitment way to test wild ideas that may not fit into the current roadmap. If your company doesn’t have hack weeks, or if it is difficult to have the entire team working on projects at once, find an alternative. It may be easier to give each person one week per quarter or half to explore an idea that might not be immediately applicable, while the rest of the team picks up their slack.
- Create a culture of feedback where critiques are embraced as an opportunity to improve. Host regular workshops where the data team reviews a work in progress and offers suggestions for improvement. Build time into your deliverable timelines for internal team feedback, before they go to stakeholders. Lead by example on this - put out ideas or work before they are fully baked; solicit feedback from the team and incorporate it. Publicly acknowledge the folks on your team who both accept and provide feedback generously.
- Celebrate failure both within your team and more broadly in the company. When a project doesn't have the impact you expected, frame the failure as learning and make sure both the data team and the rest of the company understand what you learned, why that is valuable, and what (if anything) comes next based on the failure.

How does your team balance the need for accuracy, rigor and reliability with the need for creative freedom? I would love to explore this more. Send me an [email](mailto:caitlinmoorman@gmail.com), come have a chat in our [Slack channel](https://www.locallyoptimistic.com/community/), or join us [June 23 at 3pm EDT](https://calendar.google.com/event?action=TEMPLATE&tmeid=Nmd0b3RtOGVhYThsYWZkc282dGprNGJucjkgdjBwYW1hMmZzZm1ybmhwa2FmNzVqZ3E1MnNAZw&tmsrc=v0pama2fsfmrnhpkaf75jgq52s%40group.calendar.google.com) for a live conversation!
