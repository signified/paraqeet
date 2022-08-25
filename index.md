---
layout: home
---

# {{ site.title }}
{: .display-4}

{{ site.description }}
{: .lead}

Paraqeet is a [Jekyll](https://jekyllrb.com/) theme for building websites using [Bootstrap](https://getbootstrap.com/) - the most popular HTML, CSS, and JS library in the world. The advantage of Paraqeet is that it provides a solid boilerplate implementation of Bootstrap for Jekyll, so you'll never have to waste time setting up Bootstrap in your Jekyll projects ever again. Just install Paraqeet and start building.

Paraqeet is intended to be used as a basis for highly customised websites using Bootstrap. Like any Jekyll theme, Paraqeet ships with a base set of [`_includes`](https://github.com/signified/paraqeet/tree/main/_includes), [`_layouts`](https://github.com/signified/paraqeet/tree/main/_layouts), [`_sass`](https://github.com/signified/paraqeet/tree/main/_sass) and [`assets`](https://github.com/signified/paraqeet/tree/main/assets), which can be used, overridden or disabled as required.

Paraqeet ships with three main parts:

1. [Bootstrap](#bootstrap)
1. [Bootstrap Icons](#bootstrap-icons)
1. [Highlight](#highlight)

---
{: .my-5}

## Installation
{: .mb-4}

1. Add this line to your Jekyll site's `Gemfile`:
```ruby
gem "paraqeet"
```
1. Add this line to your Jekyll site's `_config.yml`:
```yaml
theme: paraqeet
```
1. Then execute:
```shell
bundle
```

---
{: .my-5}

## Usage
{: .mb-4}

### Bootstrap
{: .mb-3}

The core of Paraqueet is Bootstrap - the most popular HTML, CSS, and JS library in the world.

---
{: .my-5}

### Bootstrap Icons
{: .mb-3}

Paraqeet ships with Bootstrap Icons - the official open source SVG icon library for Bootstrap.

Paraqeet also ships with an `icon` include to make it easy to use Bootstrap Icons in your project. The most basic usage of the `icon` include is:

```
{% raw %}{% include icon.html name='bootstrap-fill' %}{% endraw %}
```

which will produce:

```html
{% include icon.html name='bootstrap-fill' %}
```

which looks like: {% include icon.html name='bootstrap-fill' %}

---
{: .my-5}

#### Options
{: .mb-3}

| Option   | Description                                                                                        | Type   | Deafult  | Required? |
|----------|----------------------------------------------------------------------------------------------------|--------|----------|-----------|
| `name`   | The name of the icon (e.g. `'bootstrap-fill'`).                                                    | String | `nil`    | Yes       |
| `type`   | The type of icon. Available values are `'font'`, `'image'`, and `'sprite'`.                        | String | `'font'` | No        |
| `width`  | The width of the icon in pixels.                                                                   | Number | `16`     | No        |
| `height` | The height of the icon in pixels.                                                                  | Number | `16`     | No        |
| `class`  | Any additional class attribute values to be applied (e.g. `'fs-3 text-success'`).                  | String | `nil`    | No        |
| `style`  | The style attribute value to be applied (e.g. `'font-size: 2rem; color: cornflowerblue;'`).        | String | `nil`    | No        |
{: .table }

---
{: .my-5}

### Highlight
{: .mb-3}

Paraqeet supports syntax highlighting out of the box by providing the full set of [Rouge](http://rouge.jneen.net/) and [Pygments](https://pygments.org/) themes for Jekyll's built-in [code snippet highlighting](https://jekyllrb.com/docs/liquid/tags/#code-snippet-highlighting).
