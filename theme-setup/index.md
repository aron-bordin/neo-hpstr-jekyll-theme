---
layout: page
title: Theme Setup
description: "Instructions on how to install and customize the modern Jekyll theme Neo-HPSTR."
share: true
---

General notes and suggestions for customizing **Neo-HPSTR**.

## Basic Setup for a new Jekyll site

1. [Install Bundler](http://bundler.io) `gem install bundler` and then install [Jekyll](http://jekyllrb.com) and all dependencies `bundle install`.
2. Fork the [Neo-HPSTR Jekyll Theme repo](http://github.com/aron-bordin/neo-hpstr-jekyll-theme/fork).
3. Clone the repo you just forked and rename it.
4. Edit `_config.yml` to personalize your site.
5. Check out the sample posts in `_posts` to see examples for pulling in large feature images, assigning categories and tags, and other YAML data.
6. Read the documentation below for further customization pointers and documentation.

<div markdown="0"><a href="http://github.com/aron-bordin/neo-hpstr-jekyll-theme/archive/master.zip" class="btn">Download the Theme</a></div>

**Pro-tip:** Delete the `gh-pages` branch after cloning and start fresh by branching off `master`. There is a bunch of garbage in `gh-pages` used for the theme's demo site that I'm guessing you don't want on your site.
{: .notice}

---

## Setup for an Existing Jekyll site

1. Clone the following folders: `_includes`, `_layouts`, `_sass`, `assets`, and `images`.
2. Clone the following folders/files and personalize content as need: `posts/`, `tags/`, `feed.xml` and `index.html`.
3. Set the following variables in your `config.yml` file:

{% highlight yaml %}

title:            Blog Title
description:      Describe your website here.
disqus_shortname: neohpstrtheme # put your disqus here
reading_time:     true # if true, shows the estimated reading time for a post
words_per_minute: 200
logo:             images/logo.png # logo visible in the topbar
# Your site's domain goes here (eg: //mmistakes.github.io, http://mademistakes.com, etc)
# When testing locally leave blank or use http://localhost:4000
# url: http://aronbordin.com/neo-hpstr-jekyll-theme

# draw your top menu here
# each item must have a title and a url.
#   To list post categories. use type: 'categories'
#   To create sub categories. add a submenu item
# See the example
menu:
  - title: 'Home'
    url: '/'
  - title: 'Fork'
    url: 'http://github.com/aron-bordin/neo-hpstr-jekyll-theme'
  - title: 'Install'
    url: '/theme-setup/'
  - title: 'Tags'
    url: '/tags'
  - title: 'Categories'
    url: '/categories'
    type: 'categories'
  - title: 'Favorites'
    url: '#'
    submenu:
      - title: 'highlighter'
        url: '/code-highlighting-post/'
      - title: 'intro'
        url: '/readability-post/'

# Owner/author information
owner:
  name:           Your name
  site:           http://aronbordin.com
  avatar:         images/avatar.jpg
  bio:            "Your bio goes here. It shouldn't be super long but a good two sentences or two should suffice."
  email:          you@email.com
  # Twitter nick for use in Twitter cards and follow button.
  twitter: aron_bordin # if no twitter in this config, the twitter follow button will be removed
  # GitHub nick for use in follow button in author block.
  github: aron-bordin

# Twitter account associated with the site if different from owner/author twitter account.
# Used in Twitter cards.
twitter:

# Social networking links used in author block underneath posts. Update and remove as you like.
social:
  - title: "github"
    url: "https://github.com/aron-bordin"
  - title: "linkedin"
    url: "https://br.linkedin.com/in/aronbordin"
  - title: "youtube"
    url: "https://www.youtube.com/channel/UCfnSek-9HPWOx5e2pH7VFgg"
# Background image to be tiled on all pages
background:

# Analytics and webmaster tools stuff goes here
google_analytics:
google_verify:
# https://ssl.bing.com/webmaster/configure/verify/ownership Option 2 content= goes here
bing_verify:

# http://en.wikipedia.org/wiki/List_of_tz_database_time_zones
timezone:    America/New_York
locale:      en_US
future:      true
highlighter: pygments
markdown:    kramdown
gems:
  - jekyll-sitemap
sass:
  sass_dir: _sass
  style: compressed

# https://github.com/mojombo/jekyll/wiki/Permalinks
permalink:   /:categories/:title/

# Amount of post to show on home page
paginate: 5

# if true, shows the floatting share buttons
float_share: true

kramdown:
  auto_ids: true
  footnote_nr: 1
  entity_output: as_char
  toc_levels: 1..6
  use_coderay: true

  coderay:
    coderay_line_numbers: nil
    coderay_line_numbers_start: 1
    coderay_tab_width: 4
    coderay_bold_every: 10
    coderay_css: class

include: [".htaccess"]
exclude: ["lib", "config.rb", "Capfile", "config", "Gemfile", "Gemfile.lock", "README.md", "LICENSE", "log", "Rakefile", "Rakefile.rb", "tmp", "less", "*.sublime-project", "*.sublime-workspace", "test", "spec", "Gruntfile.js", "package.json", "node_modules"]


{% endhighlight %}

---

## Running Jekyll

If `jekyll build` and `jekyll serve` throw errors you may have to run Jekyll with `bundle exec` instead.

> In some cases, running executables without bundle exec may work, if the executable happens to be installed in your system and does not pull in any gems that conflict with your bundle.
>
>However, this is unreliable and is the source of considerable pain. Even if it looks like it works, it may not work in the future or on another machine.

{% highlight text %}
bundle exec jekyll build

bundle exec jekyll serve
{% endhighlight %}

---

## Folder Structure

{% highlight bash %}
hpstr-jekyll-theme/
├── _includes
|    ├── author.html                # Author panel
|    ├── browser-upgrade.html       # prompt to upgrade browser on < IE8
|    ├── disqus_comments.html       # disqus comment panel
|    ├── footer.html                # site footer
|    ├── head.html                  # site head
|    ├── navigation.html            # site navigation
|    └── scripts.html               # jQuery, plugins, GA, etc
├── _layouts
|    ├── page.html                  # page layout
|    ├── post-index.html            # post layout used on home page
|    └── post.html                  # post layout used on reading
├── _posts
├── _sass                           # Sass partials
├── assets
|    ├── css                        # compiled stylesheets
|    ├── js
|    |   ├── _main.js               # plugin options
|    |   ├── scripts.min.js         # concatenated and minifed site scripts
|    |   ├── plugins                # plugin scripts
|    └── └── vendor                 # jQuery and Modernizr scripts
├── images                          # images for posts and pages
├── _config.yml                     # Jekyll options
├── posts/                          # all posts
├── tags/                           # all posts grouped by tag
└── index.html                      # home page with pagination
{% endhighlight %}

---

## Customization

Most of the variables found here are used in the .html files found in `_includes` if you need to add or remove anything. A good place to start would be to add the `title`, `description`, and `url` for your site. Links are absolute and prefixed with `{{ "{{ site.url " }}}}` in the various `_includes` and `_layouts`, so remember to properly set `url`[^1] to `http://localhost:4000` when developing locally.

### Disqus Comments

Create a [Disqus](http://disqus.com) account and change `disqus_shortname` in `_config.yml` to the Disqus *shortname* you just setup. By default comments appear on all post and pages if you assigned a shortname. To disable commenting on a post or page, add the following to its YAML Front Matter:

{% highlight yaml %}
comments: false
{% endhighlight %}

### Social Share Links

To disable Facebook, Twitter, and Google+ share links on a post or page, add the following to its front matter:

{% highlight yaml %}
share: false
{% endhighlight %}

### Floating Social Share Links

To enable floating share links on the left of the screen, edit it on `_config.yml`:

{% highlight yaml %}
float_share: true
{% endhighlight %}


### Owner/Author Information

Change your name, and avatar photo (200x200 pixels or larger), email, and social networking URLs. If you want to link to an external image on Gravatar or something similar you'll need to edit the path in `_includes/author.html` since it assumes it is hosted on your site.

### Google Analytics and Webmaster Tools

Your Google Analytics ID goes here along with meta tags for [Google Webmaster Tools](http://support.google.com/webmasters/bin/answer.py?hl=en&answer=35179) and [Bing Webmaster Tools](https://ssl.bing.com/webmaster/configure/verify/ownershi) site verification.

### Top Menu - Navigation Links

To add additional links in the menu edit `_config.yml`. Use the following format to set the URL and title for as many links as you'd like. *External links will open in a new window..* You can create a sub-category using the `submenu` item. Also, you can list your post categories setting the `type: 'categories'`


{% highlight yaml %}
menu:
  - title: 'Home'
    url: '/'
  - title: 'Fork'
    url: 'http://github.com/aron-bordin/neo-hpstr-jekyll-theme'
  - title: 'Install'
    url: '/theme-setup/'
  - title: 'Tags'
    url: '/tags'
  - title: 'Categories'
    url: '/categories'
    type: 'categories'
  - title: 'Favorites'
    url: '#'
    submenu:
      - title: 'highlighter'
        url: '/code-highlighting-post/'
      - title: 'intro'
        url: '/readability-post/'
{% endhighlight %}


---

## Adding New Content with Octopress

While completely optional, I've included Octopress and some starter templates to automate the creation of new posts and pages. To take advantage of it start by installing the [Octopress](https://github.com/octopress/octopress) gem if it isn't already.

{% highlight bash %}
$ gem install octopress
{% endhighlight %}

### New Post

Default command

{% highlight bash %}
$ octopress new post "Post Title"
{% endhighlight %}

Default works great if you want all your posts in one directory, but if you're like me and want to group them into subfolders like `/posts`, `/portfolio`, etc. Then this is the command for you. By specifying the DIR it will create a new post in that folder and populate the `categories:` YAML with the same value.

{% highlight bash %}
$ octopress new post "New Portfolio Post Title" --dir portfolio
{% endhighlight %}

### New Page

To create a new page use the following command.

{% highlight bash %}
$ octopress new page new-page/
{% endhighlight %}

---

### Jekyll _includes

For the most part you can leave these as is since the author/owner details are pulled from `_config.yml`. That said you'll probably want to customize the copyright stuff in `footer.html` to your liking.

### Reading Time

On by default. To turn off remove `reading_time` from `_config.yml`. Default words per minute is set at 200 and can changed by updating `words_per_minute` in `_config.yml`.

#### Post/Page Thumbnails for OG and Twitter Cards

Post and page thumbnails work the same way. These are used by [Open Graph](https://developers.facebook.com/docs/opengraph/) and [Twitter Cards](https://dev.twitter.com/docs/cards) meta tags found in `head.html`. If you don't assign a thumbnail the image you assigned to `site.owner.avatar` in `_config.yml` will be used.

Here's an example of what a tweet to your site could look like if you activate Twitter Cards and include all the metas in your post's YAML.

![Twitter Card summary large image screenshot]({{ site.url }}/images/twitter-card-summary-large-image.jpg)

### Videos

Video embeds are responsive and scale with the width of the main content block with the help of [FitVids](http://fitvidsjs.com/).

Adding YouTube video embeds causes errors when building your Jekyll site. To fix wrap the html within `{::nomarkdown}` tags. Example below:

{% highlight html %}
{::nomarkdown}
<iframe width="560" height="315" src="http://www.youtube.com/embed/PWf4WUoMXwg" frameborder="0" allowfullscreen></iframe>
{:/nomarkdown}
{% endhighlight %}

### Twitter Cards

Twitter cards make it possible to attach images and post summaries to Tweets that link to your content. Summary Card meta tags have been added to `head.html` to support this, you just need to [validate and apply your domain](https://dev.twitter.com/docs/cards) to turn it on.

### Link Post Type

Link blog like a champ by adding `link: http://url-you-want-linked` to a post's YAML front matter. Arrow glyph links to the post's permalink and the the `post-title` links to the source URL. Here's an [example of a link post]({{ site.url }}/sample-link-post/) if you need a visual.

---

## Style Customization

Here you'll find some useful scss variables to help you to customize your Blog interface. All variables can be found at `_sass/_variables.scss`.

#### Top Navbar Size

To change its size, edit the **`$menu-height`** value. It's recommended a value between 50px and 100px. This variable will automatically update the icon and menu size for you.

#### Top Navbar Colors

The navbar uses two colors, the top color and overflow color. The top color represents the navbar color when the window is not scrolled and the overflow color represents the color when we have a sufficient scroll to change its color.

You can change these colors using the **`$menu-top`** and **`$menu-overflow`** variable values.

#### Top Navbar hover color

The color that you see in the item under the mouse can be changed in the **`$header-margin`** variable.

---

## Further Customization

Jekyll 2.x added support for Sass files making it much easier to modify a theme's fonts and colors. By editing values found in `_sass/variables.scss` you can fine tune the site's colors and typography.

For example if you wanted a red background instead of white you'd change `$bodycolor: #fff;` to `$bodycolor: $cc0033;`.

To modify the site's JavaScript files I setup a Grunt build script to lint/concatenate/minify all scripts into `scripts.min.js`. [Install Node.js](http://nodejs.org/), then [install Grunt](http://gruntjs.com/getting-started), and then finally install the dependencies for the theme contained in `package.json`:

{% highlight bash %}
npm install
{% endhighlight %}

From the theme's root, use `grunt` to concatenate JavaScript files and optimize `.jpg`, `.png` and `.svg` files in the `images/` folder.

You can also use `grunt dev` in combination with `bundle exec jekyll serve` to watch for updates in JS files that Grunt will then automatically re-build as you write your code, which will in turn auto-generate your Jekyll site when developing locally.

---

## Questions?

Having a problem getting something to work or want to know why I setup something in a certain way?  [File a GitHub Issue](http://github.com/aron-bordin/neo-hpstr-jekyll-theme/issues/new). And if you make something cool with this theme feel free to let me know.

---

## License

This theme is free and open source software, distributed under the [MIT License]({{ site.url }}/LICENSE) version 2 or later. So feel free to to modify this theme to suit your needs.

---

[^1]: Used to generate absolute URLs in `feed.xml`, and for canonical URLs in `head.html`. Don't include a trailing `/` in your base url ie: http://mademistakes.com. When developing locally I suggest using http://localhost:4000 or whatever localhost you're using to properly load all theme stylesheets, scripts, and image assets. If you leave this variable blank all links will resolve correctly except those pointing to home.

[^2]: If you're using GitHub Pages to host your site be aware that plugins are disabled. So you'll need to build your site locally and then manually deploy if you want to use this sweet plugin.
