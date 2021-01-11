# Cadre <!-- omit in toc -->

Cadre is a responsive, modern Jekyll theme for bloggers. This theme is designed to come with good defaults including an archive and categories page. 

This is a fork of the excellent [scaffold theme](https://github.com/sziv2p/jekyll-theme-scaffold), redesigned with Bootstrap and added KaTex support for improved mathematical typesetting.

## Features (Not a Complete List) <!-- omit in toc -->

- [Bootstrap](https://getbootstrap.com/)
- [Open Color](https://yeun.github.io/open-color/)
- [Font Awesome](https://fontawesome.com/)
- Archive implemented by pure Liquid
- Pagination, via [`jekyll-paginate`](https://rubygems.org/gems/jekyll-paginate)
- TOC, via [`jekyll-toc`](https://github.com/allejo/jekyll-toc)
- [Jekyll Feed](https://github.com/jekyll/jekyll-feed/)
- [Jekyll SEO Tag](https://github.com/jekyll/jekyll-seo-tag/)
- [Jekyll Sitemap](https://github.com/jekyll/jekyll-sitemap/)
- [Google Analytics](https://analytics.google.com/)
- [Disqus](https://disqus.com/)
- [MathJax](https://www.mathjax.org/)
- [Katex](https://katex.org/)

## Table of Contents <!-- omit in toc -->

- [Installation](#installation)
- [Usage](#usage)
  - [Global Configuration](#global-configuration)
  - [Post Configuration](#post-configuration)
  - [Homepage](#homepage)
  - [Navigation](#navigation)
  - [Social Links](#social-links)
  - [Archive](#archive)
  - [Custom Head](#custom-head)
- [Contributing](#contributing)
- [Development](#development)
- [License](#license)

## Installation

Add this line to your Jekyll site's `Gemfile`:

```ruby
# Gemfile

gem "jekyll-theme-cadre"
```

And add this line to your Jekyll site's `_config.yml`:

```yaml
# _config.yml

theme: jekyll-theme-cadre
```

And then execute:

```bash
$ bundle
```

Or install it yourself as:

```bash
$ gem install jekyll-theme-cadre
```

If you want to use this theme on GitHub Pages, you can do that via `jekyll-remote-theme`:

1. Import `jekyll-remote-theme` in your `Gemfile`:

    ```ruby
    # Gemfile 

    gem "jekyll-remote-theme"
    ```

2. Add these lines to your `_config.yml`:

    ```yml
    # _config.yml

    plugins:
      - jekyll-remote-theme

    remote_theme: slee981/jekyll-theme-cadre
    ```

## Usage

The main usage of this theme is described in detail below. If you find the document difficult to understand or not specific enough, you can also use the [`gh-pages`](https://github.com/slee981/jekyll-theme-cadre/tree/gh-pages) branch of this repository as an example to learn how to use this theme.

### Global Configuration

| Variable | Type | Default | Specification |
| -------- | ---- | ------- | ------------- |
| `title` | String | --- | The title of the website |
| `about` | String | --- | About you or about the blog |
| `author.name` | String | --- | The name of the website author |
| `author.url` | String | --- | A URL of the website author |
| `date_format` | String | `%-d %b %Y` | The [date format](http://alanwsmith.com/jekyll-liquid-date-formatting-examples) which is used in many places on the website |
| `tags_path` | String | --- | A path to the archive-by-tags page; It is used by tags on each post |
| `google_analytics` | String | --- | Google Analytics tracking ID |
| `disqus` | String | --- | Disqus short name |

### Post Configuration

| Variable | Type | Default | Specification |
| -------- | ---- | ------- | ------------- |
| `description` | String | --- | A description of the current post |
| `author` | String or Array | --- | The author name(s) of the post |
| `mathjax` | Boolean | `false` | Enable MathJax on this page |
| `katex` | Boolean | `false` | Enable KaTex on this page |
| `comments` | Boolean | `true` | Enable the Disqus comment system |
| `toc` | Boolean | `false` | Enable the TOC |

### Homepage

You can create a homepage for your blog by setting `layout: home` in your `index.html`. No other code is needed.

```html
<!-- ./index.html -->
---
layout: home
---
```

### Categories

You can create a categories page for your blog by setting `layout: categories` in a file called `categories.html`.

```html
<!-- ./categories.html -->
---
layout: categories
---
```

### Navigation

You can configure the navigation of the website by creating a file `_data/navigation.yml` in your repository, and put some data such as below into it.

```yml
# _data/navigation.yml
- name: Home 
  link: index.html
- name: Categories 
  link: categories.html 
```

### Social Links

Scaffold allows you to show social links on the website, all you need to do is creating a file `_data/social.yml`, for example,

```yml
# _data/social.yml
- name: Email
  link: mailto:smlee.981@gmail.com
  icon: fas fa-envelope
- name: Twitter
  link: https://twitter.com/slee981
  icon: fab fa-twitter
- name: GitHub
  link: https://github.com/slee981
  icon: fab fa-github
```

The `icon` property means a [Font Awesome](https://fontawesome.com/) class, and you can select any one you like.

### Archive

Pure provides some built-in archive pages. It is implemented in pure Liquid. If you want to archive posts by years, you can create a page and put these code in it:

```yml
---
layout: archive
type: years
---
```

Similarly, if you want to archive posts by categories or tags, you can set the `type` property as `categories` or `tags`.

### Custom Head

You can insert custom code easily into the head by  creating a file `_includes/custom-head.html` and adding your code.

```html
<!-- ./_includes/custom-head.html -->
<script>
  console.log("This is my custom head");
</script>
```

## Contributing

Bug reports and pull requests are welcome on GitHub at [https://github.com/slee981/jekyll-theme-cadre](https://github.com/slee981/jekyll-theme-cadre). 

## Development

To set up your environment to develop this theme, run `bundle install`.

Your theme is setup just like a normal Jekyll site! To test your theme, run `bundle exec jekyll serve` and open your browser at `http://localhost:4000`. This starts a Jekyll server using your theme. Add pages, documents, data, etc. like normal to test your theme's contents. As you make modifications to your theme and to your content, your site will regenerate and you should see the changes in the browser after a refresh, just like normal.

When your theme is released, only the files in `_layouts`, `_includes`, `_sass` and `assets` tracked with Git will be bundled.
To add a custom directory to your theme-gem, please edit the regexp in `jekyll-theme-cadre.gemspec` accordingly.

## Acknowledgment

As mentioned above, this project is a fork of [https://github.com/sziv2p/jekyll-theme-scaffold](https://github.com/sziv2p/jekyll-theme-scaffold). As such, credit and appreciation goes to anyone who contributed to that project. Much of the "scaffolding" of this project was left untouched. 

## License

The theme is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
