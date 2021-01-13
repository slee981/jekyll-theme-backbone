---
layout: post
title: How to Add a Categories Page
author: Stephen Lee
categories: [general, tutorial, jekyll]
toc: true
---

## Introduction 

Cadre comes with easy support for displaying your posts by both year (i.e. archive) and by category. I'll assume you're up and running. If not, see the quickstart guide. 

## Create files 

In the root of your project directory, create two files: 
1. `./categories.html`
1. `./archive.html`

In other words, these should be in the same place as your `index.html` file. 

## Add header

Copy and paste the following information: 

```yml
# in ./categories.html
---
title: Categories 
layout: archive
type: categories
permalink: categories.html
---
```

```yml
# in ./archive.html
---
title: Archive
layout: archive
type: years
permalink: archive.html
---
```

## Add navigation

Create a final file for navigating to these new pages in the `_data` folder. For example, on OSX or Linux: 

```bash 
$ mkdir ./_data
$ touch ./_data/navigation.yml
```

In this new file, add the following contents. 

```yml
# in ./_data/navigation.yml

- name: Home 
  link: index.html 
- name: Categories
  link: categories.html
- name: Archive 
  link: archive.html
```

## All done! 

And just like that you have archive and category pages that will allow your readers to find your past posts. 