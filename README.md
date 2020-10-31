# Scaffold

Scaffold is a *one-column minimalist Jekyll theme for bloggers*.

According to [Merriam-Webster](https://www.merriam-webster.com/), a *scaffold* is

> a temporary or movable platform for workers (such as bricklayers, painters, or miners) to stand or sit on when working at a height above the floor or ground

So is the target of the Jekyll theme Scaffold. It doesn't need to be modern, powerful, colorful, or beautiful; It just needs to be **simple**, **proper**, **naked**, and **neat**.

Scaffold is empirical. Standing on it, you -- the blogger -- can build a great building based on your words.

## Features (Not a Complete List)

- [Normalize.css](http://necolas.github.io/normalize.css/)
- [Open Color](https://yeun.github.io/open-color/)
- Dark mode, via [`prefers-color-scheme`](https://developer.mozilla.org/en-US/docs/Web/CSS/@media/prefers-color-scheme)
- [Font Awesome](https://fontawesome.com/)

## Installation

Add this line to your Jekyll site's `Gemfile`:

```ruby
gem "jekyll-theme-scaffold"
```

And add this line to your Jekyll site's `_config.yml`:

```yaml
theme: jekyll-theme-scaffold
```

And then execute:

    bundle

Or install it yourself as:

    gem install jekyll-theme-scaffold

## Usage

### Global Configuration

| Variable | Type | Default | Specification |
| -------- | ---- | ------- | ------------- |
| `lang` | String | `en` | The language of pages; The value can be overwritten by the `lang` variable on each page |

### Homepage

You can create a homepage for your blog by setting `layout: home` in your `index.html`.

## Contributing

Bug reports and pull requests are welcome on GitHub at [https://github.com/sziv2p/jekyll-theme-scaffold](https://github.com/sziv2p/jekyll-theme-scaffold). This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## Development

To set up your environment to develop this theme, run `bundle install`.

Your theme is setup just like a normal Jekyll site! To test your theme, run `bundle exec jekyll serve` and open your browser at `http://localhost:4000`. This starts a Jekyll server using your theme. Add pages, documents, data, etc. like normal to test your theme's contents. As you make modifications to your theme and to your content, your site will regenerate and you should see the changes in the browser after a refresh, just like normal.

When your theme is released, only the files in `_layouts`, `_includes`, `_sass` and `assets` tracked with Git will be bundled.
To add a custom directory to your theme-gem, please edit the regexp in `jekyll-theme-scaffold.gemspec` accordingly.

## License

The theme is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
