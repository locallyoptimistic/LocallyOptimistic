# LocallyOptimistic

Getting started
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
