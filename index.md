---
layout: home
---

# {{ site.title }}
{: .display-4}

{{ site.description }}
{: .lead}

![Bootstrap v5.2.2](https://img.shields.io/badge/Bootstrap-v5.2.2-712cf9)
![Bootstrap Icons v1.9.0](https://img.shields.io/badge/Bootstrap%20Icons-v1.9.0-712cf9)

Paraqeet is a [Jekyll](https://jekyllrb.com/) theme for building websites using [Bootstrap](https://getbootstrap.com/) - the most popular HTML, CSS, and JS library in the world. Paraqeet comes pre-loaded with the latest versions of Bootstrap and [Bootstrap Icons](https://icons.getbootstrap.com/), as well as built-in CSS theme support for [Rouge](http://rouge.jneen.net/) - Jekyll's default code syntax highlighter.

Paraqeet is intended to be used as the basis for highly customised websites using Bootstrap. Like any Jekyll theme, Paraqeet ships with a base set of:

- [`_includes`](https://github.com/signified/paraqeet/tree/main/_includes)
- [`_layouts`](https://github.com/signified/paraqeet/tree/main/_layouts)
- [`_sass`](https://github.com/signified/paraqeet/tree/main/_sass)
- [`assets`](https://github.com/signified/paraqeet/tree/main/assets)

These can be used, overridden or disabled as required.

---
{: .my-5}

## Installation
{: .my-5}

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
{: .my-5}

### Bootstrap
{: .my-4}

The core of Paraqueet is Bootstrap - the most popular HTML, CSS, and JS library in the world.

To customise Bootstrap to the look and feel of your project, override the variables found in [`_sass/bootstrap/_variables.scss`](https://github.com/signified/paraqeet/blob/main/_sass/bootstrap/_variables.scss) with your own values in [`_sass/_variables.scss`](https://github.com/signified/paraqeet/blob/main/_sass/_variables.scss).

For example, to change the primary theme colour to purple and the default sans-serif font family to Roboto, add the following to `_sass/_variables.scss`:

```scss
$primary: $purple !default;
$font-family-sans-serif: "Roboto", sans-serif !default;
```

### Bootstrap Icons
{: .my-4}

Paraqeet ships with Bootstrap Icons - the official open source SVG icon library for Bootstrap.

To make it easy to use Bootstrap Icons in your project, Paraqeet ships with an [`icon`](https://github.com/signified/paraqeet/blob/main/_includes/icon.html) include. The most basic usage of the `icon` include is:

```liquid
{% raw %}{% include icon.html name='bootstrap' %}{% endraw %}
```
{: .mb-3}

which will produce:

```html
{% include icon.html name='bootstrap' %}
```
{: .mb-3}

which looks like: {% include icon.html name='bootstrap' %}

#### Advanced Usage
{: .my-4}

```liquid
{% raw %}{% include icon.html
  name='bootstrap'
  type='sprite'
  size=64
  class='fs-3 text-info'
%}{% endraw %}
```
{: .mb-3}

which will produce:

```xml
{% include icon.html
  name='bootstrap'
  type='sprite'
  size=64
  class='fs-3 text-info'
%}
```
{: .mb-3}

which looks like: {% include icon.html
  name='bootstrap'
  type='sprite'
  size=64
  class='fs-3 text-info'
%}

#### Options
{: .my-4}

| Option   | Description                                                                                 | Type   | Deafult  | Required? |
|----------|---------------------------------------------------------------------------------------------|--------|----------|-----------|
| `name`   | The name of the icon (e.g. `'bootstrap-fill'`).                                             | String | `nil`    | Yes       |
| `type`   | The type of icon. Available values are `'font'`, `'image'`, and `'sprite'`.                 | String | `'font'` | No        |
| `size`   | The width and height of the icon in pixels (shorthand for `width` and `height`).            | Number | `16`     | No        |
| `width`  | The width of the icon in pixels.                                                            | Number | `16`     | No        |
| `height` | The height of the icon in pixels.                                                           | Number | `16`     | No        |
| `class`  | Any additional class attribute values to be applied (e.g. `'fs-3 text-info'`).           | String | `nil`    | No        |
| `style`  | The style attribute value to be applied (e.g. `'font-size: 2rem; color: cornflowerblue;'`). | String | `nil`    | No        |
{: .table .mb-5 }

### Highlight
{: .my-4}

Paraqeet ships with syntax highlighting out of the box by providing built-in CSS theme support for [Rouge](http://rouge.jneen.net/) - Jekyll's default code syntax highlighter.

To customise syntax highlighting to the look and feel of your project, override [`_sass/_highlight.scss`](https://github.com/signified/paraqeet/blob/main/_sass/_highlight.scss).

Below are examples of the syntax highlighter at work.

#### Without Line Numbers
{: .my-4}

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
{: .mb-3}

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
{: .mb-3}

#### With Line Numbers
{: .my-4}

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
{: .mb-3}

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
