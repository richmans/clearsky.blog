---
title: Rails doesn't save my added attribute
date: 2022-07-09
draft: false
---
A long long time ago in 2014, before I started to work in a place ruled by the evil snake called "python", I worked with a little framework called  [Ruby on Rails](https://rubyonrails.org). It was a wonderful time. Rails was hip in those days. All the cool kids were doing it. What I liked most about rails was how little code was needed to achieve something. 

There is a bit a learning curve with rails. Rails is magic. You don't need to understand exactly what is happening, but you do need to remember the right spells. The good thing is that once you get into the rails mindset, you start expecting things to work in a certain way. And 9 out of 10 times, it does! 

Another philosophy that i like about rails is "**convention over configuration**". For instance: lets say you have a table "posts". What do you call the column that identifies a row? And the column that is the foreign key to the "authors" table? In most cases, it doesn't really matter. So rails decides for you: "id" and "author_id". The rails ORM called ActiveRecord understands these column. Now you can do things like `my_post.author` and boom you've followed that foreign key without ever naming it in your code. Ofcourse, of you really want to, there's a way to [change the name of the foreign key column](https://guides.rubyonrails.org/association_basics.html#options-for-belongs-to-foreign-key)

So rails was great in 2014. I hadn't used it or even looked at it since that time. The hype seems to have passed. The cool kids have all jumped on the nodejs/"single page app"-train. I seem to have missed that train. In fact, i never liked javascript or npm. So, when rails' big boss [posted a blog about a new rails version that steers clear from transpiling and bundling](https://world.hey.com/dhh/modern-web-apps-without-javascript-bundling-or-transpiling-a20f2755), I was paying attention. When rails 7 came out in december 2021, I decided to take it for a spin. 

> rails in 2022: less hype, same magic?

It felt like coming home after a long trip: running `rails g scaffold post title:string content:text` and `rails s` and finding your crud functions ready and working. This is where a lot of "rails tutorials" stop. But a scaffold is not a building. It's a starting point. What happens when we want to add an attribute to our blog? 

* First, we add a new migration to add a column to the table. Dont forget to `rails db:migrate`
* Next, we edit the \_form partial to define an input field for the attribute
* As i remember it, there was no step 3. Lets give it a whirl!

**Wait, it doesn't error but it also doesn't save the new attribute?**

It turns out that in the last 8 years, someone found out that it isn't the greatest idea to let the user define arbitrary attributes in the controller update/create calls. So now you have to define which model attributes can be updated by the controller. They call it [Strong parameters](https://edgeapi.rubyonrails.org/classes/ActionController/StrongParameters.html). It looks like this:

```
def blog_params
  params.require(:blog).permit(:title, :content)
end
```

So adding an attribute now requires this extra step in the controller. This is a process i do very often when developing apps. I guess it makes sense security wise to have this validation. For me though, it also means rails has lost some of its famous magic.

There's lots of other magic left though, and even some new magic that was added since 2014. I really like [active storage](https://edgeguides.rubyonrails.org/active_storage_overview.html). 