Chitter Challenge
=================

* Challenge time: rest of the day and weekend, until Monday 9am
* Feel free to use google, your notes, books, etc. but work on your own
* If you refer to the solution of another coach or student, please put a link to that in your README
* If you have a partial solution, **still check in a partial solution**
* You must submit a pull request to this repo with your code by 9am Monday morning

Challenge:
-------

As usual please start by forking this repo.

We are going to write a little Twitter clone that will allow the users to post messages to a public stream.

Features:
-------

```sh
As a Maker
So that I can post messages on Chitter as me
I want to sign up for Chitter
Acceptance Criteria
Sign up page exists with form
Database to save user information - email, password, username, name
password saved with salt
a new instance of a user is created and stored into database via form
confirm sign out
Cannot sign up twice with same username or email
Password confirmation

As a Maker
So that I can post messages on Chitter as me
I want to log in to Chitter
Acceptance Criteria
A page to login into exists with form
Able to login with email/username and password
Does not login if username/email and password is incorrect
confirmation that logged in


As a Maker
So that I can avoid others posting messages on Chitter as me
I want to log out of Chitter
Acceptance Criteria
log out button exists
clicking log out button should redirect you
should no longer display user info on page


As a Maker
So that I can let people know what I am doing
I want to post a message (peep) to chitter
Acceptance Criteria
a form on a page exists to post a message
the form saves to a database
new message appears in feed
the message is linked to the logged in user
can only peep if logged in



As a maker
So that I can see what others are saying
I want to see all peeps in reverse chronological order
Acceptance Criteria
Messages are displayed in reverse chronilogical order
can see peepss if not logged in


As a maker
So that I can better appreciate the context of a peep
I want to see the time at which it was made
Acceptance Criteria
Time stamp saved in database
Time stamps are displayed with message
Time stamp should not be able to be changed


Future changes

Password recovery
CSS
Refactor controller



```

Notes on functionality:
------

* Drive the creation of your app using tests - either cucumber or rspec as you prefer
* Makers sign up to chitter with their email, password, name and a user name (e.g. sam@makersacademy.com, s3cr3t, Samuel Russell Hampden Joseph, tansaku).
* The username and email are unique.
* Peeps (posts to chitter) have the name of the maker and their user handle.
* Use bcrypt to secure the passwords.
* Use data mapper and postgres to save the data.
* You don't have to be logged in to see the peeps.
* You only can peep if you are logged in.
* Please ensure that you update your README to indicate the technologies used, and give instructions on how to install and run the tests
* Finally submit a pull request before Monday at 9am with your solution or partial solution.  However much or little amount of code you wrote please please please submit a pull request before Monday at 9am

Bonus:
-----

If you have time you can implement the following:

* In order to start a conversation as a maker I want to reply to a peep from another maker.

And/Or:

* Work on the css to make it look good (we all like beautiful things).

Good luck and let the chitter begin!

Code Review
-----------

In code review we'll be hoping to see:

* All tests passing
* High [Test coverage](https://github.com/makersacademy/course/blob/master/pills/test_coverage.md) (>95% is good)
* The code is elegant: every class has a clear responsibility, methods are short etc.

Reviewers will potentially be using this [code review rubric](docs/review.md).  Referring to this rubric in advance may make the challenge somewhat easier.  You should be the judge of how much challenge you want this weekend.

Notes on test coverage
----------------------

Please ensure you have the following **AT THE TOP** of your spec_helper.rb in order to have test coverage stats generated
on your pull request:

```ruby
require 'coveralls'
require 'simplecov'

SimpleCov.formatters = [
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]
Coveralls.wear!
```

You can see your [test coverage](https://github.com/makersacademy/course/blob/master/pills/test_coverage.md) when you submit a pull request, and you can also get a summary locally by running:

```
$ coveralls report
```

This repo works with [Coveralls](https://coveralls.io/) to calculate test coverage statistics on each pull request.

