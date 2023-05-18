---
layout: home
---

<header class="bg-dark text-light py-5">
  <div class="container">
    <h1 class="display-1 mb-4">{{ site.title }}</h1>
    <p class="lead mb-4">{{ site.description }}</p>
    <a class="d-block d-md-inline mb-3 mb-md-0 btn btn-outline-light" href="https://getbootstrap.com/" target="_blank">{% include icon.html name='bootstrap' %} Bootstrap 5.3.0</a>
    <a class="d-block d-md-inline mb-3 mb-md-0 btn btn-outline-light" href="https://icons.getbootstrap.com/" target="_blank">{% include icon.html name='bootstrap' %} Bootstrap Icons 1.10.5</a>
    <a class="d-block d-md-inline btn btn-secondary" href="https://github.com/signified/paraqeet" target="_blank">{% include icon.html name='github' %} View on GitHub</a>
  </div>
</header>
<main class="py-5 prose">
  <div class="container" markdown="1">

Paraqeet is a [Jekyll](https://jekyllrb.com/) theme for building websites using [Bootstrap](https://getbootstrap.com/) - the most popular HTML, CSS, and JS library in the world. Paraqeet comes pre-loaded with the latest versions of Bootstrap and [Bootstrap Icons](https://icons.getbootstrap.com/), as well as built-in CSS theme support for [Rouge](http://rouge.jneen.net/) - Jekyll's default code syntax highlighter.

Paraqeet is intended to be used as the basis for highly customised websites using Bootstrap. Like any Jekyll theme, Paraqeet ships with a base set of:

- [`_includes`](https://github.com/signified/paraqeet/tree/main/_includes)
- [`_layouts`](https://github.com/signified/paraqeet/tree/main/_layouts)
- [`_sass`](https://github.com/signified/paraqeet/tree/main/_sass)
- [`assets`](https://github.com/signified/paraqeet/tree/main/assets)

These can be used, overridden or disabled as required.

---

## Installation

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

## Usage

### Bootstrap

The core of Paraqueet is Bootstrap - the most popular HTML, CSS, and JS library in the world.

To customise Bootstrap to the look and feel of your project, override the variables found in [`_sass/bootstrap/_variables.scss`](https://github.com/signified/paraqeet/blob/main/_sass/bootstrap/_variables.scss) and [`_sass/bootstrap/_variables-dark.scss`](https://github.com/signified/paraqeet/blob/main/_sass/bootstrap/_variables-dark.scss) with your own values in [`_sass/_variables.scss`](https://github.com/signified/paraqeet/blob/main/_sass/_variables.scss) and [`_sass/_variables-dark.scss`](https://github.com/signified/paraqeet/blob/main/_sass/_variables-dark.scss) respectively.

For example, to change the primary theme colour to purple and the default sans-serif font family to Roboto, add the following to `_sass/_variables.scss`:

```scss
$primary: $purple !default;
$font-family-sans-serif: "Roboto", sans-serif !default;
```

### Bootstrap Icons

Paraqeet ships with Bootstrap Icons - the official open source SVG icon library for Bootstrap.

To make it easy to use Bootstrap Icons in your project, Paraqeet ships with an [`icon`](https://github.com/signified/paraqeet/blob/main/_includes/icon.html) include. The most basic usage of the `icon` include is:

```liquid
{% raw %}{% include icon.html name='bootstrap' %}{% endraw %}
```

which will produce:

```html
{% include icon.html name='bootstrap' %}
```

which looks like: {% include icon.html name='bootstrap' %}

#### Advanced Usage

```liquid
{% raw %}{% include icon.html
  name='bootstrap'
  type='sprite'
  size=64
  class='fs-3 text-info'
%}{% endraw %}
```

which will produce:

```xml
{% include icon.html
  name='bootstrap'
  type='sprite'
  size=64
  class='fs-3 text-info'
%}
```

which looks like: {% include icon.html
  name='bootstrap'
  type='sprite'
  size=64
  class='fs-3 text-info'
%}

#### Options

<div class="table-responsive mb-5" markdown="1">

| Option   | Description                                                                                 | Type   | Deafult  | Required? |
|----------|---------------------------------------------------------------------------------------------|--------|----------|-----------|
| `name`   | The name of the icon (e.g. `'bootstrap-fill'`).                                             | String | `nil`    | Yes       |
| `type`   | The type of icon. Available values are `'font'`, `'image'`, and `'sprite'`.                 | String | `'font'` | No        |
| `size`   | The width and height of the icon in pixels (shorthand for `width` and `height`).            | Number | `16`     | No        |
| `width`  | The width of the icon in pixels.                                                            | Number | `16`     | No        |
| `height` | The height of the icon in pixels.                                                           | Number | `16`     | No        |
| `class`  | Any additional class attribute values to be applied (e.g. `'fs-3 text-info'`).              | String | `nil`    | No        |
| `style`  | The style attribute value to be applied (e.g. `'font-size: 2rem; color: cornflowerblue;'`). | String | `nil`    | No        |

</div>

### Highlight

Paraqeet ships with syntax highlighting out of the box by providing built-in CSS theme support for [Rouge](http://rouge.jneen.net/) - Jekyll's default code syntax highlighter.

To customise syntax highlighting to the look and feel of your project, override [`_sass/_highlight.scss`](https://github.com/signified/paraqeet/blob/main/_sass/_highlight.scss).

Below are examples of the syntax highlighter at work.

#### Without Line Numbers

````
```ruby
class Greeter
  def initialize(name="World")
    @name = name
  end

  def say_hi
    puts "Hi #{@name}!"
  end
end
```
````

```ruby
class Greeter
  def initialize(name="World")
    @name = name
  end

  def say_hi
    puts "Hi #{@name}!"
  end
end
```

#### With Line Numbers

```
{% raw %}{% highlight ruby linenos %}
class Greeter
  def initialize(name="World")
    @name = name
  end

  def say_hi
    puts "Hi #{@name}!"
  end
end
{% endhighlight %}{% endraw %}
```

{% highlight ruby linenos %}
class Greeter
  def initialize(name="World")
    @name = name
  end

  def say_hi
    puts "Hi #{@name}!"
  end
end
{% endhighlight %}

### Typography

Inspired by the [Tailwind CSS Typography Plugin](https://tailwindcss.com/docs/typography-plugin), Paraqeet ships with a [`.prose`](https://github.com/signified/paraqeet/blob/main/_sass/_prose.scss) class you can use to add typographic defaults to any vanilla HTML you don’t control, like HTML rendered from Markdown, or pulled from a CMS.

```html
<article class="prose">
  {% raw %}{{ markdown }}{% endraw %}
</article>
```

To see what it looks like in action, check out the [live demo]({{- '/typography' | relative_url -}}).

  </div>
</main>
