---
layout: post
title: Sample Post with Feature Image
description: "Sample Post with Feature Image"
tags: [sample post]
image:
    feature: feature.jpg
---

This post demonstrate how to use feature images on your posts.

Just add:

{% highlight yaml %}
image:
  feature: filename.png
{% endhighlight %}

where **filename.png** is an image inside `images` folder. This image will be displayed on the top of your post.

Warning! The image heigtht is not limited. The image width will be adjusted to fit on the post container, make sure to not use images with a high height. 
