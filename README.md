# Groups of Stuff

###GA WDI London - Project 2

#### A minimal site for storing and distributing lists of miscellany/trivia to use as example text

This version lets you create, edit and delete lists of text. It also helps you to randomly pick a list so you can surprise yourself.

####Approach / How it works

The site makes use of nested resource routes to manage the hierachy of the items. Since the two resources are so strongly interelated, the edit/update/show pages combine data from both resources.

Items are listed in a textarea, 1 item per line to make them easy to copy/manipulate. Similarly you can create multiple items quickly by listing them in exactly the same way. Serverside ruby then iterates through the text and splits it into seperate items.

Items and groups are seperately assigned Authors so in future versions you will be able to show Groups with multiple collaborators.

####The build

* The project is built on Ruby on Rails
* The database is managed by postgresql
* The logic is handled with Ruby and the views are templated in ERB files
* The styling is a combination of hand coding and the Pure CSS framework
* The Google Web Font 'Roboto Slab' is used for title

#### Problems & Challenges

The main challenges were to correctly route the nested resources and combining and splitting the Items for a better UX.

In future versions I would like to allow content to be tagged and categorized and to allow filtering of groups. I would also want to make use of AJAX to provide a smoother user experience.