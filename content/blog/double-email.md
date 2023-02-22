---
title: ActionMailer renders the email body twice
date: 2023-02-22
draft: false
---
Recently i was happily coding on my rails project. I wanted to add a feature that would send an email to all admin users when a certain event occurred. So i searched "rails email" and discovered [ActionMailer](https://guides.rubyonrails.org/action_mailer_basics.html). 

It works simple enough. First you define a "mailer" which is a lot like a controller. I defined a "PublicationMailer". It fetches the necessary data and then renders the email. Step 2 is defining views for the mailer, both html and txt formats. Lastly, you call `PublicationMailer.publication().deliver` and bimbamboom your email is ready. Good! On to the next feature.

Fast forward a couple of weeks. The app is almost ready and i'm deploying it on a VPS to see if everything works as expected. File uploads? Check! Authentication? Check! Email notifications? Che... wait a minute! The email that arrived in my inbox had the right contents, but it had them twice! Sanity check: no this did not occur in my test environment. What was going on?

After some head-scratching, i took another hard look at my mailer object:

```
class PublicationMailer < ApplicationMailer
  helper :application
  default from: "notifications@mark423.com"
  layout "mailer"
  def publication(recording)
    @recording = recording
    User.where(is_admin: true).each do |user|
      mail to: user.email, subject: "Podcast published"
    end
  end
end
```

I immediately understood my mistake. What I would expect this code to do is to send one email to each user that is an admin. 

In my test environment, i only had one admin user. In my production environment i had created 2, which triggered the problem.

> It turns out the **mail** function does not really send a mail. It **renders** the mail.

## Solving it
The fix was simple: call mail once with a list of recipients.

```
class PublicationMailer < ApplicationMailer
  helper :application
  default from: "notifications@mark423.com"
  def recording_published(recording)
    @recording = recording
    emails = User.where(is_admin: true).collect(&:email)
    mail to: emails, subject: "Podcast published"
  end
end
```

## Hindsight
I think the function 'mail' could have had a better name (maybe 'render' like in controllers?). On the other hand, i could probably have read the [documentation](https://api.rubyonrails.org/classes/ActionMailer/Base.html#method-i-mail) better.