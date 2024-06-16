---
title: Typography
layout: default
---

<header class="py-4 py-md-5">
  <div class="container">
    <p><a href="{{- '/' | relative_url -}}">{% include icon.html name='arrow-left' %} Back</a></p>
  </div>
</header>
<main class="py-4 py-md-5">
  <article class="container prose col-12 col-md-10 col-lg-8 col-xxl-6" markdown="1">

# {{ page.title }}

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent aliquam sagittis magna, non volutpat quam pharetra vel. Sed sapien elit, dignissim a varius sit amet, congue eget augue. Fusce dictum interdum erat vel rhoncus. Sed euismod, orci vel commodo aliquet, eros neque pulvinar justo, non varius lacus ex ut metus. Aliquam ultrices nulla ac nunc pretium, vel lacinia tortor pulvinar. Etiam pulvinar nibh molestie leo hendrerit pretium.

Vivamus vulputate turpis sed eros dictum dictum. Donec suscipit vehicula ligula, at ultricies est egestas vitae. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent imperdiet iaculis commodo. Quisque nec facilisis lectus, eu condimentum augue. Fusce vel lorem vehicula, vestibulum magna eu, malesuada urna. Pellentesque suscipit ligula quis ipsum tincidunt tempor.

---

## Headings

### Proin convallis a magna aliquet facilisis

#### In finibus laoreet luctus

##### Proin tempus turpis ac lectus maximus ac tempor ante accumsan

###### Vestibulum dictum tincidunt commodo

Vestibulum vel enim ex. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vitae ultricies magna. Praesent commodo imperdiet nunc, ut dapibus erat eleifend sit amet. Pellentesque in odio dignissim, fermentum nunc nec, tristique nisl. Nullam eu molestie magna, sit amet tincidunt nunc. Sed turpis purus, efficitur sit amet orci a, aliquam lacinia quam. Sed vestibulum accumsan tortor.

---

## Inline text elements

You can use the `mark` tag to <mark>highlight</mark> text.
The `del` tag is used for text that is meant to be treated as <del>deleted</del>.
Use the `s` tag if the text is ~~no longer accurate~~.
The `ins` tag is for text that is meant to be treated as <ins>an addition to the document</ins>.
<u>This text will render as underlined</u>.
<small>This text is meant to be treated as fine print.</small>
**This text is rendered as bold.**
*This text is rendered as italicized.*
<abbr title="attribute">attr</abbr> is an abbreviation for "attribute".

---

## Code blocks

```
class Greeter
  def initialize(name="World")
    @name = name
  end

  def say_hi
    puts "Hi #{@name}!"
  end
end
```

---

## Blockquotes

> Suspendisse tristique massa a dui convallis, vel posuere metus facilisis. Proin viverra leo auctor, pulvinar dui non, auctor magna. Sed vel ipsum in dolor rhoncus mollis in id ligula.

---

## Lists

### Ordered lists

1. Quisque non risus ac mauris dictum rutrum.
1. Curabitur faucibus felis quis convallis accumsan.
1. Maecenas tincidunt.
    1. Dui eget venenatis elementum.
    1. Metus lectus suscipit augue:
    1. In vulputate diam dolor eget urna.
1. Aenean nec nibh blandit.
1. Ullamcorper tortor ac.
1. Fusce scelerisque urna id dui eleifend vestibulum.

### Unordered lists

- Quisque non risus ac mauris dictum rutrum.
- Curabitur faucibus felis quis convallis accumsan.
- Maecenas tincidunt.
    - Dui eget venenatis elementum.
    - Metus lectus suscipit augue:
    - In vulputate diam dolor eget urna.
- Aenean nec nibh blandit.
- Ullamcorper tortor ac.
- Fusce scelerisque urna id dui eleifend vestibulum.

### Description lists

First Term
: This is the definition of the first term.

Second Term
: This is one definition of the second term.
: This is another definition of the second term.

---

## Images

![Surfboard Fence. Photo by tatonomusic on Unsplash](https://images.unsplash.com/photo-1586996292898-71f4036c4e07?w=800&q=80)

---

## Tables

| Wrestler                | Origin       | Finisher           |
| ----------------------- | ------------ | ------------------ |
| Bret "The Hitman" Hart  | Calgary, AB  | Sharpshooter       |
| Stone Cold Steve Austin | Austin, TX   | Stone Cold Stunner |
| Randy Savage            | Sarasota, FL | Elbow Drop         |
| Vader                   | Boulder, CO  | Vader Bomb         |
| Razor Ramon             | Chuluota, FL | Razor's Edge       |

  </article>
</main>
