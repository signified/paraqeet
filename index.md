---
layout: home
---

<header class="py-4 py-md-5 text-center text-md-start bg-dark text-light">
  <div class="container">
    <h1 class="display-1 mb-4">{{ site.title }}</h1>
    <p class="lead mb-4">{{ site.description }}</p>
    <a class="d-block d-md-inline mb-3 mb-md-0 btn btn-outline-light" href="https://getbootstrap.com/" target="_blank">{% icon bootstrap %} Bootstrap 5.3.3</a>
    <a class="d-block d-md-inline mb-3 mb-md-0 btn btn-outline-light" href="https://icons.getbootstrap.com/" target="_blank">{% icon bootstrap %} Bootstrap Icons 1.11.3</a>
    <a class="d-block d-md-inline btn btn-secondary" href="https://github.com/signified/paraqeet" target="_blank">{% icon github %} View on GitHub</a>
  </div>
</header>
<main class="py-4 py-md-5">
  <article class="container prose col-12 col-md-10 col-lg-8 col-xxl-6" markdown="1">

Paraqeet is a Jekyll theme for building websites using Bootstrap - the most popular HTML, CSS, and JS library in the world. Paraqeet comes pre-loaded with the latest versions of Bootstrap and Bootstrap Icons - the official open source SVG icon library for Bootstrap, as well as built-in Sass support for Rouge - Jekyll’s default code syntax highlighter.

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

To customise Bootstrap to the look and feel of your project, override the variables found in [`_sass/bootstrap/_variables.scss`](https://github.com/signified/paraqeet/blob/main/_sass/bootstrap/_variables.scss) and [`_sass/bootstrap/_variables-dark.scss`](https://github.com/signified/paraqeet/blob/main/_sass/bootstrap/_variables-dark.scss) with your own values in [`_sass/_variables.scss`](https://github.com/signified/paraqeet/blob/main/_sass/_variables.scss) and [`_sass/_variables-dark.scss`](https://github.com/signified/paraqeet/blob/main/_sass/_variables-dark.scss) respectively.

For example, to change the primary theme colour to purple and the default sans-serif font family to Roboto, add the following to `_sass/_variables.scss`:

```scss
$primary: $purple !default;
$font-family-sans-serif: "Roboto", sans-serif !default;
```

### Bootstrap Icons

To make it easy to use Bootstrap Icons in your project, Paraqeet ships with an `icon` tag.

#### Basic Usage

```liquid
{% raw %}{% icon emoji-heart-eyes %}{% endraw %}
```

which will produce:

```html
{% icon emoji-heart-eyes %}
```

which looks like: {% icon emoji-heart-eyes %}

#### Advanced Usage

```liquid
{% raw %}{% icon check-circle-fill | type: sprite | size: 64 | class: text-success | aria_hidden: true %}{% endraw %}
```

which will produce:

```xml
{% icon check-circle-fill | type: sprite | size: 64 | class: text-success | aria_hidden: true %}
```

which looks like: {% icon check-circle-fill | type: sprite | size: 64 | class: text-success | aria_hidden: true %}

#### Options

<div class="table-responsive mb-5" markdown="1">

| Name          | Description                                                                       | Deafult | Required? |
|---------------|-----------------------------------------------------------------------------------|---------|-----------|
| `name`        | The name of the icon (e.g. `bootstrap-fill`).                                     | `nil`   | Yes       |
| `type`        | The type of icon. Available values are `font`, `image`, `sprite`, and `embedded`. | `font`  | No        |
| `size`        | The width and height of the icon in pixels.                                       | `16`    | No        |
| `class`       | Any additional class attribute values to be applied (e.g. `fs-3 text-info`).      | `nil`   | No        |
| `aria_hidden` | For purely decorative icons, adds the `aria-hidden="true"` attribute.             | `false` | No        |

</div>

### Highlight

To customise syntax highlighting to the look and feel of your project, override [`_sass/_highlight.scss`](https://github.com/signified/paraqeet/blob/main/_sass/_highlight.scss) in your own project. Below are examples of the syntax highlighter in use.

Without line numbers:

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

With line numbers:

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

Inspired by the Tailwind CSS Typography Plugin, Paraqeet ships with a `.prose` class you can use to add typographic defaults to any vanilla HTML you don’t control, like HTML rendered from Markdown, or pulled from a CMS.

```html
<article class="prose">
  {% raw %}{{ content }}{% endraw %}
</article>
```

To customise typographic defaults to the look and feel of your project, override [`_sass/_prose.scss`](https://github.com/signified/paraqeet/blob/main/_sass/_prose.scss) in your own project.

To see what it looks like in action, check out the [live demo]({{- '/typography' | relative_url -}}).

  </article>
</main>
