# LocallyOptimistic

### Getting started
```
brew install hugo # Install Hugo
git submodule init && git submodule update # Install theme as submodule
```

Creating a new post:
```
hugo new post/my-post.md
```

A starter file will be created in `./content/posts/`. You can edit that file (make sure to pay attention to your [front-matter](https://gohugo.io/content-management/front-matter/)).


You can see the site with your post by running
```
hugo server -D
```
and navigating to [http://localhost:1313/](http://localhost:1313/).

### Contributing

We manage the blog via pull-requests on github. If you have content you'd like to publish, just submit a PR and request a review from one of the maintainers (Michael, Sam, Scott, or Jung).

If a post has at least one approval and no "rejections", that is enough to merge a PR and publish the content. 

