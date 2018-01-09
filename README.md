# Jekyll Site Config

Add custom data to Jekyll site object

## Usage

```sh
gem "jekyll-site-config"
```

```rb
require "jekyll-site-config"
```

```rb
JekyllSiteConfig.set_config("hello", {
  "world" => "Hello, world",
  "texas" => "Howdy, Texas"
})
```

```md
---
layout: post
title: "Welcome to Jekyll!"
date: 2018-01-08 20:25:28 -0600
categories: jekyll update
---

{{ site.hello.world }}
{{ site.hello.texas }}
```
