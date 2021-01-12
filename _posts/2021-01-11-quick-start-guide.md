---
layout: post
title: Quick Start Guide
author: Stephen Lee
categories: [general, tutorial, jekyll]
toc: true
---

## Introduction 

I assume you are already curious or motivated to learn and use Jekyll to host your blog. Great choice, and Cadre will make it as easy as possible. 

## Create a new Jekyll project

Follow this [quickstart guide](https://jekyllrb.com/docs/) for making jekyll blog. Once all prerequisites are installed, 

1. Install `jekyll`, and the Ruby package manager `bundler`.
```bash 
$ gem install jekyll bundler
```

2. Create a new Jekyll project called `cadre-blog` and `cd` into the new directory.
```bash 
$ jekyll new cadre-blog && cd cadre-blog
```

 3. Build the site and make sure it worked.
```bash
$ bundle exec jekyll serve
```

Open your browser to http://localhost:4000. You should see some basic content. 

## Add Cadre

Add this line to your Jekyll site's Gemfile:

```ruby
# Gemfile

gem "jekyll-theme-cadre"
```

And change this line in your site's `_config.yml`:

```git
# _config.yml

- theme: minima
+ theme: jekyll-theme-cadre
```

And then execute:

```shell
$ bundle
$ bundle exec jekyll serve
```

You should see the update in the browser. 


## Setup for GitHub Pages

If you want to use this theme on GitHub Pages, you can do that with the plugin `jekyll-remote-theme`. In short, GitHub pages only supports a select number of themes, and this ensures that their servers and your website are kept safe. 

1. Import jekyll-remote-theme in your Gemfile:

```ruby
# Gemfile 

gem "jekyll-remote-theme"
```

2. Add these lines to your _config.yml:

```yml
# _config.yml

plugins:
  - jekyll-remote-theme
  - jekyll-feed
  - jekyll-paginate
  - jekyll-seo-tag
  - jekyll-sitemap

remote_theme: slee981/jekyll-theme-cadre
```

## Add posts 
Add your content to the `_posts` folder, following the naming convention. Note, with Cadre, use the following headers in the markdown file to ensure everything looks as good as possible: 

```yml
# in ./_posts/2021-02-14-your-awesome-post.md 

---
layout: post
title: Your Post Title
author: Your Name
categories: [whatever categories, you want, tutorial]

toc: true
katex: true  # if you're using math
---
```

### TOC
Quick note on the table of contents: because the post's header receives a `<h1>` tag when transpiled, the table of contents code ignore all "top-level" header codes, which for markdown is denoted as follows: 

```markdown 
<!-- in ./_posts/2021-02-14-your-awesome-post.md -->

# Heading 1
This will be **ignored** by the table of contents.

## Heading 2 
This will be recorded and displayed by the table of contents. 
```

## Add a categories page 

Follow the other blog post here to do this! 

## Deploy to GitHub Pages

Once you are ready to deploy: 

1. Push your changes to a branch called `gh-pages`
2. On the repo, navigate to settings, and enable the branch to go live to the internet. 
3. Add a new domain name, if desired. 

[These docs from GitHub](https://docs.github.com/en/github-ae@latest/github/working-with-github-pages/about-github-pages-and-jekyll) will help you troubleshoot almost any problem you might encounter. 

## Finally, as they say...
Profit.






