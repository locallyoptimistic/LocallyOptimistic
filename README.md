# LocallyOptimistic

### Contributing

We manage the blog via pull-requests on github. Here is the worflow:
1. If this is your first time contributing, Slack or email Sam Swift your github username so he can add you as a contributor
2. Create a branch named after your post (e.g., `attribution-dilemma`). Branch names should be human readable and should ideally match the post title or a shortened version of the post title. All development of the post will occur within this branch
3. Create a file in `content/post/` with the same name as your branch (e.g. `attribution-dilemma.md`). 
4. Add the following content to the top of the file. Replace the content in [brackets]:

```
---
author: [first and last name (e.g., Scott Breitenother)]
title: "[<6 word title (e.g., The Attribution Dilemma)]"
publishDate: "[date as defined in the publishing schedule (e.g., 2018-04-08)]"
draft: true
tags: 
 - [tag 1 (e.g., analytics)]
 - [tag 2 (e.g., attribution)]
 - [tag 3+ optional]
---
```

5. Write a draft of your post for review. Ideally the post should be complete (i.e. intro, body and conclusion fully wrtten) so that the reviewer can review a complete post. Follow the styleguide.
6. Create a PR to master (remove `draft: true`) and request a review from one of the maintainers (Michael Kaminsky, Sam Swift, Scott Breitenother). For good measure you may also want to post the PR on slack. If a post has at least one approval and no "rejections", that is enough to merge a PR and publish the content. 


### Getting started
```
brew install hugo # Install Hugo
git submodule init && git submodule update # Install theme as submodule
```

Creating a new post:
```
hugo new post/my-post.md
```

A starter file will be created in `./content/post/`. You can edit that file (make sure to pay attention to your [front-matter](https://gohugo.io/content-management/front-matter/)).


You can see the site with your post by running
```
hugo server -D -F
```
and navigating to [http://localhost:1313/](http://localhost:1313/).
